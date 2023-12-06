// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soli_ponto_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SoliPontoRecord> _$soliPontoRecordSerializer =
    new _$SoliPontoRecordSerializer();

class _$SoliPontoRecordSerializer
    implements StructuredSerializer<SoliPontoRecord> {
  @override
  final Iterable<Type> types = const [SoliPontoRecord, _$SoliPontoRecord];
  @override
  final String wireName = 'SoliPontoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SoliPontoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.telefone;
    if (value != null) {
      result
        ..add('telefone')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
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
  SoliPontoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SoliPontoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'telefone':
          result.telefone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
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

class _$SoliPontoRecord extends SoliPontoRecord {
  @override
  final int? telefone;
  @override
  final String? email;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SoliPontoRecord([void Function(SoliPontoRecordBuilder)? updates]) =>
      (new SoliPontoRecordBuilder()..update(updates))._build();

  _$SoliPontoRecord._({this.telefone, this.email, this.ffRef}) : super._();

  @override
  SoliPontoRecord rebuild(void Function(SoliPontoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SoliPontoRecordBuilder toBuilder() =>
      new SoliPontoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SoliPontoRecord &&
        telefone == other.telefone &&
        email == other.email &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, telefone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SoliPontoRecord')
          ..add('telefone', telefone)
          ..add('email', email)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SoliPontoRecordBuilder
    implements Builder<SoliPontoRecord, SoliPontoRecordBuilder> {
  _$SoliPontoRecord? _$v;

  int? _telefone;
  int? get telefone => _$this._telefone;
  set telefone(int? telefone) => _$this._telefone = telefone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SoliPontoRecordBuilder() {
    SoliPontoRecord._initializeBuilder(this);
  }

  SoliPontoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _telefone = $v.telefone;
      _email = $v.email;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SoliPontoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SoliPontoRecord;
  }

  @override
  void update(void Function(SoliPontoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SoliPontoRecord build() => _build();

  _$SoliPontoRecord _build() {
    final _$result = _$v ??
        new _$SoliPontoRecord._(telefone: telefone, email: email, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
