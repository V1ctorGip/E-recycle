// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocalStruct> _$localStructSerializer = new _$LocalStructSerializer();

class _$LocalStructSerializer implements StructuredSerializer<LocalStruct> {
  @override
  final Iterable<Type> types = const [LocalStruct, _$LocalStruct];
  @override
  final String wireName = 'LocalStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, LocalStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.lat;
    if (value != null) {
      result
        ..add('lat')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.long;
    if (value != null) {
      result
        ..add('long')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  LocalStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocalStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'long':
          result.long = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$LocalStruct extends LocalStruct {
  @override
  final int? lat;
  @override
  final int? long;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$LocalStruct([void Function(LocalStructBuilder)? updates]) =>
      (new LocalStructBuilder()..update(updates))._build();

  _$LocalStruct._({this.lat, this.long, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'LocalStruct', 'firestoreUtilData');
  }

  @override
  LocalStruct rebuild(void Function(LocalStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocalStructBuilder toBuilder() => new LocalStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalStruct &&
        lat == other.lat &&
        long == other.long &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, long.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LocalStruct')
          ..add('lat', lat)
          ..add('long', long)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class LocalStructBuilder implements Builder<LocalStruct, LocalStructBuilder> {
  _$LocalStruct? _$v;

  int? _lat;
  int? get lat => _$this._lat;
  set lat(int? lat) => _$this._lat = lat;

  int? _long;
  int? get long => _$this._long;
  set long(int? long) => _$this._long = long;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  LocalStructBuilder() {
    LocalStruct._initializeBuilder(this);
  }

  LocalStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lat = $v.lat;
      _long = $v.long;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocalStruct;
  }

  @override
  void update(void Function(LocalStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocalStruct build() => _build();

  _$LocalStruct _build() {
    final _$result = _$v ??
        new _$LocalStruct._(
            lat: lat,
            long: long,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'LocalStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
