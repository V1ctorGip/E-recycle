// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocalStruct extends FFFirebaseStruct {
  LocalStruct({
    int? lat,
    int? long,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _lat = lat,
        _long = long,
        super(firestoreUtilData);

  // "lat" field.
  int? _lat;
  int get lat => _lat ?? 0;
  set lat(int? val) => _lat = val;
  void incrementLat(int amount) => _lat = lat + amount;
  bool hasLat() => _lat != null;

  // "long" field.
  int? _long;
  int get long => _long ?? 0;
  set long(int? val) => _long = val;
  void incrementLong(int amount) => _long = long + amount;
  bool hasLong() => _long != null;

  static LocalStruct fromMap(Map<String, dynamic> data) => LocalStruct(
        lat: data['lat'] as int?,
        long: data['long'] as int?,
      );

  static LocalStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? LocalStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'lat': _lat,
        'long': _long,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'lat': serializeParam(
          _lat,
          ParamType.int,
        ),
        'long': serializeParam(
          _long,
          ParamType.int,
        ),
      }.withoutNulls;

  static LocalStruct fromSerializableMap(Map<String, dynamic> data) =>
      LocalStruct(
        lat: deserializeParam(
          data['lat'],
          ParamType.int,
          false,
        ),
        long: deserializeParam(
          data['long'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'LocalStruct(${toMap()})';
}

LocalStruct createLocalStruct({
  int? lat,
  int? long,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LocalStruct(
      lat: lat,
      long: long,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LocalStruct? updateLocalStruct(
  LocalStruct? local, {
  bool clearUnsetFields = true,
}) =>
    local
      ?..firestoreUtilData =
          FirestoreUtilData(clearUnsetFields: clearUnsetFields);

void addLocalStructData(
  Map<String, dynamic> firestoreData,
  LocalStruct? local,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (local == null) {
    return;
  }
  if (local.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && local.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final localData = getLocalFirestoreData(local, forFieldValue);
  final nestedData = localData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = local.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLocalFirestoreData(
  LocalStruct? local, [
  bool forFieldValue = false,
]) {
  if (local == null) {
    return {};
  }
  final firestoreData = mapToFirestore(local.toMap());

  // Add any Firestore field values
  local.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLocalListFirestoreData(
  List<LocalStruct>? locals,
) =>
    locals?.map((e) => getLocalFirestoreData(e, true)).toList() ?? [];
