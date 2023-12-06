import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FornecedorRecord extends FirestoreRecord {
  FornecedorRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cnpj" field.
  int? _cnpj;
  int get cnpj => _cnpj ?? 0;
  bool hasCnpj() => _cnpj != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _cnpj = snapshotData['cnpj'] as int?;
    _email = snapshotData['email'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Fornecedor');

  static Stream<FornecedorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FornecedorRecord.fromSnapshot(s));

  static Future<FornecedorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FornecedorRecord.fromSnapshot(s));

  static FornecedorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FornecedorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FornecedorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FornecedorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FornecedorRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createFornecedorRecordData({
  int? cnpj,
  String? email,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cnpj': cnpj,
      'email': email,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}
