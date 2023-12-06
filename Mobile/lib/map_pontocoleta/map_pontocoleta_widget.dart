import '/backend/backend.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter_platform_interface/src/types/location.dart' as gm_location;

class MapPontocoletaWidget extends StatefulWidget {
  const MapPontocoletaWidget({Key? key}) : super(key: key);

  @override
  _MapPontocoletaWidgetState createState() => _MapPontocoletaWidgetState();
}

class _MapPontocoletaWidgetState extends State<MapPontocoletaWidget> {
  static const gm_location.LatLng _palmas =
  gm_location.LatLng(-10.248911020538818, -48.32646332427908);

  late GoogleMapController _mapController;
  List<Marker> _markers = [];

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    _loadPontoDeColetaMarkers();
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      _showLocationErrorDialog('Os serviços de localização estão desativados.');
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) {
      _showLocationErrorDialog(
          'A permissão de localização foi negada permanentemente. Habilite a permissão nas configurações do dispositivo.');
      return;
    }

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        _showLocationErrorDialog(
            'A permissão de localização foi negada. Habilite a permissão nas configurações do dispositivo.');
        return;
      }
    }

    Position position;
    try {
      position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
    } catch (e) {
      print(e);
      _showLocationErrorDialog('Não foi possível obter a localização atual.');
      return;
    }

    _moveToCurrentLocation(position.latitude, position.longitude);
  }

  void _moveToCurrentLocation(double latitude, double longitude) {
    final newPosition = gm_location.LatLng(latitude, longitude);
    _mapController.animateCamera(
      CameraUpdate.newLatLngZoom(
        newPosition,
        13.5,
      ),
    );
  }

  void _showLocationErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Erro'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _loadPontoDeColetaMarkers() async {
    final pontosDeColeta = await PontoDeColetaRecord.collection.get();
    final BitmapDescriptor markerIcon = await BitmapDescriptor.fromAssetImage(ImageConfiguration(size: Size(35, 35)),'assets/images/pt_coleta.png',);
    setState(() {
      _markers = pontosDeColeta.docs.map((doc) {
        final pontoDeColeta = PontoDeColetaRecord.fromSnapshot(doc);
        return Marker(
            markerId: MarkerId(doc.id),
        position: LatLng(
        pontoDeColeta.endereco!.latitude,
          pontoDeColeta.endereco!.longitude,

        ),
          infoWindow: InfoWindow(
            title: pontoDeColeta.nome,
            snippet: pontoDeColeta.email,
          ),
          // ícone personalizado para o marcador
          icon: markerIcon,
        );
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Mapa - Pontos de Coletas'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: const CameraPosition(
          target: _palmas,
          zoom: 13.5,
        ),
        markers: Set<Marker>.of(_markers),
        onMapCreated: (GoogleMapController controller) {
          _mapController = controller;
        },
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
      ),
    );
  }
}



