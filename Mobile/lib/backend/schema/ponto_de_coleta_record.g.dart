// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ponto_de_coleta_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PontoDeColetaRecord> _$pontoDeColetaRecordSerializer =
    new _$PontoDeColetaRecordSerializer();

class _$PontoDeColetaRecordSerializer
    implements StructuredSerializer<PontoDeColetaRecord> {
  @override
  final Iterable<Type> types = const [
    PontoDeColetaRecord,
    _$PontoDeColetaRecord
  ];
  @override
  final String wireName = 'PontoDeColetaRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PontoDeColetaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nome;
    if (value != null) {
      result
        ..add('Nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endereco;
    if (value != null) {
      result
        ..add('Endereco')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.contato;
    if (value != null) {
      result
        ..add('Contato')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('Email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('Status')
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
  PontoDeColetaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PontoDeColetaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Endereco':
          result.endereco = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'Contato':
          result.contato = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Status':
          result.status = serializers.deserialize(value,
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

class _$PontoDeColetaRecord extends PontoDeColetaRecord {
  @override
  final String? nome;
  @override
  final LatLng? endereco;
  @override
  final double? contato;
  @override
  final String? email;
  @override
  final String? status;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PontoDeColetaRecord(
          [void Function(PontoDeColetaRecordBuilder)? updates]) =>
      (new PontoDeColetaRecordBuilder()..update(updates))._build();

  _$PontoDeColetaRecord._(
      {this.nome,
      this.endereco,
      this.contato,
      this.email,
      this.status,
      this.ffRef})
      : super._();

  @override
  PontoDeColetaRecord rebuild(
          void Function(PontoDeColetaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PontoDeColetaRecordBuilder toBuilder() =>
      new PontoDeColetaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PontoDeColetaRecord &&
        nome == other.nome &&
        endereco == other.endereco &&
        contato == other.contato &&
        email == other.email &&
        status == other.status &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, endereco.hashCode);
    _$hash = $jc(_$hash, contato.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PontoDeColetaRecord')
          ..add('nome', nome)
          ..add('endereco', endereco)
          ..add('contato', contato)
          ..add('email', email)
          ..add('status', status)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PontoDeColetaRecordBuilder
    implements Builder<PontoDeColetaRecord, PontoDeColetaRecordBuilder> {
  _$PontoDeColetaRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  LatLng? _endereco;
  LatLng? get endereco => _$this._endereco;
  set endereco(LatLng? endereco) => _$this._endereco = endereco;

  double? _contato;
  double? get contato => _$this._contato;
  set contato(double? contato) => _$this._contato = contato;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PontoDeColetaRecordBuilder() {
    PontoDeColetaRecord._initializeBuilder(this);
  }

  PontoDeColetaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _endereco = $v.endereco;
      _contato = $v.contato;
      _email = $v.email;
      _status = $v.status;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PontoDeColetaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PontoDeColetaRecord;
  }

  @override
  void update(void Function(PontoDeColetaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PontoDeColetaRecord build() => _build();

  _$PontoDeColetaRecord _build() {
    final _$result = _$v ??
        new _$PontoDeColetaRecord._(
            nome: nome,
            endereco: endereco,
            contato: contato,
            email: email,
            status: status,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
