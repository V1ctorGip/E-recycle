import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SoliColetaRecord extends FirestoreRecord {
  SoliColetaRecord._(
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
      FirebaseFirestore.instance.collection('soli_coleta');

  static Stream<SoliColetaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SoliColetaRecord.fromSnapshot(s));

  static Future<SoliColetaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SoliColetaRecord.fromSnapshot(s));

  static SoliColetaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SoliColetaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SoliColetaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SoliColetaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SoliColetaRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createSoliColetaRecordData({
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
