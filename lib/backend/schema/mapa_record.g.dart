// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapa_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MapaRecord> _$mapaRecordSerializer = new _$MapaRecordSerializer();

class _$MapaRecordSerializer implements StructuredSerializer<MapaRecord> {
  @override
  final Iterable<Type> types = const [MapaRecord, _$MapaRecord];
  @override
  final String wireName = 'MapaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MapaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.token;
    if (value != null) {
      result
        ..add('token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  MapaRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MapaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$MapaRecord extends MapaRecord {
  @override
  final String? token;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MapaRecord([void Function(MapaRecordBuilder)? updates]) =>
      (new MapaRecordBuilder()..update(updates))._build();

  _$MapaRecord._({this.token, this.ffRef}) : super._();

  @override
  MapaRecord rebuild(void Function(MapaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MapaRecordBuilder toBuilder() => new MapaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapaRecord && token == other.token && ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MapaRecord')
          ..add('token', token)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MapaRecordBuilder implements Builder<MapaRecord, MapaRecordBuilder> {
  _$MapaRecord? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MapaRecordBuilder() {
    MapaRecord._initializeBuilder(this);
  }

  MapaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MapaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MapaRecord;
  }

  @override
  void update(void Function(MapaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MapaRecord build() => _build();

  _$MapaRecord _build() {
    final _$result = _$v ?? new _$MapaRecord._(token: token, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
