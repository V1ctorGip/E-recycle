import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PontoDeColetaRecord extends FirestoreRecord {
  PontoDeColetaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "Endereco" field.
  LatLng? _endereco;
  LatLng? get endereco => _endereco;
  bool hasEndereco() => _endereco != null;

  // "Contato" field.
  double? _contato;
  double get contato => _contato ?? 0.0;
  bool hasContato() => _contato != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "Foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  void _initializeFields() {
    _nome = snapshotData['Nome'] as String?;
    _endereco = snapshotData['Endereco'] as LatLng?;
    _contato = castToType<double>(snapshotData['Contato']);
    _email = snapshotData['Email'] as String?;
    _status = snapshotData['Status'] as String?;
    _foto = snapshotData['Foto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ponto_de_coleta');

  static Stream<PontoDeColetaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PontoDeColetaRecord.fromSnapshot(s));

  static Future<PontoDeColetaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PontoDeColetaRecord.fromSnapshot(s));

  static PontoDeColetaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PontoDeColetaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PontoDeColetaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PontoDeColetaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PontoDeColetaRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createPontoDeColetaRecordData({
  String? nome,
  LatLng? endereco,
  double? contato,
  String? email,
  String? status,
  String? foto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nome': nome,
      'Endereco': endereco,
      'Contato': contato,
      'Email': email,
      'Status': status,
      'Foto': foto,
    }.withoutNulls,
  );

  return firestoreData;
}
