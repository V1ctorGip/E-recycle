import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ColetaRecord extends FirestoreRecord {
  ColetaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "Localizacao" field.
  DocumentReference? _localizacao;
  DocumentReference? get localizacao => _localizacao;
  bool hasLocalizacao() => _localizacao != null;

  // "Contato" field.
  DocumentReference? _contato;
  DocumentReference? get contato => _contato;
  bool hasContato() => _contato != null;

  // "Descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _data = snapshotData['Data'] as DateTime?;
    _localizacao = snapshotData['Localizacao'] as DocumentReference?;
    _contato = snapshotData['Contato'] as DocumentReference?;
    _descricao = snapshotData['Descricao'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('coleta')
          : FirebaseFirestore.instance.collectionGroup('coleta');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('coleta').doc();

  static Stream<ColetaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ColetaRecord.fromSnapshot(s));

  static Future<ColetaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ColetaRecord.fromSnapshot(s));

  static ColetaRecord fromSnapshot(DocumentSnapshot snapshot) => ColetaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ColetaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ColetaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ColetaRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createColetaRecordData({
  DateTime? data,
  DocumentReference? localizacao,
  DocumentReference? contato,
  String? descricao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Data': data,
      'Localizacao': localizacao,
      'Contato': contato,
      'Descricao': descricao,
    }.withoutNulls,
  );

  return firestoreData;
}
