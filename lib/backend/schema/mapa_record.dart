import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mapa_record.g.dart';

abstract class MapaRecord implements Built<MapaRecord, MapaRecordBuilder> {
  static Serializer<MapaRecord> get serializer => _$mapaRecordSerializer;

  String? get token;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MapaRecordBuilder builder) =>
      builder..token = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mapa');

  static Stream<MapaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MapaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MapaRecord._();
  factory MapaRecord([void Function(MapaRecordBuilder) updates]) = _$MapaRecord;

  static MapaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMapaRecordData({
  String? token,
}) {
  final firestoreData = serializers.toFirestore(
    MapaRecord.serializer,
    MapaRecord(
      (m) => m..token = token,
    ),
  );

  return firestoreData;
}
