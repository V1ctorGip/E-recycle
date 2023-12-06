import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_static_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/mobileLatLng.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:provider/provider.dart';
import 'pontodecoleta_model.dart';
export 'pontodecoleta_model.dart';

class PontodecoletaWidget extends StatefulWidget {
  const PontodecoletaWidget({Key? key}) : super(key: key);

  @override
  _PontodecoletaWidgetState createState() => _PontodecoletaWidgetState();
}

class _PontodecoletaWidgetState extends State<PontodecoletaWidget> {
  late PontodecoletaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PontodecoletaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFF41AD59),
          automaticallyImplyLeading: false,
          title: Text(
            'Pontos de coleta',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('HomePage');
              },
              child: Icon(
                Icons.close_outlined,
                color: Colors.white,
                size: 30.0,
              ),
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: 398.6,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFC7E3BD),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: StreamBuilder<List<PontoDeColetaRecord>>(
                          stream: queryPontoDeColetaRecord(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              );
                            }
                            List<PontoDeColetaRecord>
                                columnPontoDeColetaRecordList = snapshot.data!;
                            return SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: List.generate(
                                    columnPontoDeColetaRecordList.length,
                                    (columnIndex) {
                                  final columnPontoDeColetaRecord =
                                      columnPontoDeColetaRecordList[
                                          columnIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: Container(
                                      width: 288.2,
                                      height: 287.7,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF41AD59),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        border: Border.all(
                                          color: Color(0xFF41AD59),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            columnPontoDeColetaRecord.nome,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                  fontSize: 20.0,
                                                ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await launchURL(
                                                  columnPontoDeColetaRecord
                                                      .endereco!
                                                      .toString());
                                            },
                                            child: FlutterFlowStaticMap(
                                              location:
                                                  columnPontoDeColetaRecord
                                                      .endereco!,
                                              apiKey:
                                                  'sk.eyJ1IjoiYW5kcmV0YXYwMjEiLCJhIjoiY2xnN2t5NWcxMG84cDNlbjlqbmhrMmIzZyJ9.FcJ2hpiRa0CKtZhpnZMmjg',
                                              style: MapBoxStyle.Streets,
                                              width: 250.0,
                                              height: 200.0,
                                              fit: BoxFit.cover,
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              markerColor: Color(0xFF41AD59),
                                              zoom: 12,
                                              tilt: 0,
                                              rotation: 0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
