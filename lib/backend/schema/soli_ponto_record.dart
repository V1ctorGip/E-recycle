import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SoliPontoRecord extends FirestoreRecord {
  SoliPontoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "telefone" field.
  int? _telefone;
  int get telefone => _telefone ?? 0;
  bool hasTelefone() => _telefone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _telefone = snapshotData['telefone'] as int?;
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('soli_ponto');

  static Stream<SoliPontoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SoliPontoRecord.fromSnapshot(s));

  static Future<SoliPontoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SoliPontoRecord.fromSnapshot(s));

  static SoliPontoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SoliPontoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SoliPontoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SoliPontoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SoliPontoRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createSoliPontoRecordData({
  int? telefone,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'telefone': telefone,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}
