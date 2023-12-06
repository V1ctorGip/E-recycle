// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soli_coleta_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SoliColetaRecord> _$soliColetaRecordSerializer =
    new _$SoliColetaRecordSerializer();

class _$SoliColetaRecordSerializer
    implements StructuredSerializer<SoliColetaRecord> {
  @override
  final Iterable<Type> types = const [SoliColetaRecord, _$SoliColetaRecord];
  @override
  final String wireName = 'SoliColetaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SoliColetaRecord object,
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
  SoliColetaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SoliColetaRecordBuilder();

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

class _$SoliColetaRecord extends SoliColetaRecord {
  @override
  final int? telefone;
  @override
  final String? email;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SoliColetaRecord(
          [void Function(SoliColetaRecordBuilder)? updates]) =>
      (new SoliColetaRecordBuilder()..update(updates))._build();

  _$SoliColetaRecord._({this.telefone, this.email, this.ffRef}) : super._();

  @override
  SoliColetaRecord rebuild(void Function(SoliColetaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SoliColetaRecordBuilder toBuilder() =>
      new SoliColetaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SoliColetaRecord &&
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
    return (newBuiltValueToStringHelper(r'SoliColetaRecord')
          ..add('telefone', telefone)
          ..add('email', email)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SoliColetaRecordBuilder
    implements Builder<SoliColetaRecord, SoliColetaRecordBuilder> {
  _$SoliColetaRecord? _$v;

  int? _telefone;
  int? get telefone => _$this._telefone;
  set telefone(int? telefone) => _$this._telefone = telefone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SoliColetaRecordBuilder() {
    SoliColetaRecord._initializeBuilder(this);
  }

  SoliColetaRecordBuilder get _$this {
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
  void replace(SoliColetaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SoliColetaRecord;
  }

  @override
  void update(void Function(SoliColetaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SoliColetaRecord build() => _build();

  _$SoliColetaRecord _build() {
    final _$result = _$v ??
        new _$SoliColetaRecord._(
            telefone: telefone, email: email, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
