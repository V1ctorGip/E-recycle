// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coleta_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ColetaRecord> _$coletaRecordSerializer =
    new _$ColetaRecordSerializer();

class _$ColetaRecordSerializer implements StructuredSerializer<ColetaRecord> {
  @override
  final Iterable<Type> types = const [ColetaRecord, _$ColetaRecord];
  @override
  final String wireName = 'ColetaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ColetaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('Data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.localizacao;
    if (value != null) {
      result
        ..add('Localizacao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.contato;
    if (value != null) {
      result
        ..add('Contato')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.descricao;
    if (value != null) {
      result
        ..add('Descricao')
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
  ColetaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ColetaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Localizacao':
          result.localizacao = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Contato':
          result.contato = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Descricao':
          result.descricao = serializers.deserialize(value,
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

class _$ColetaRecord extends ColetaRecord {
  @override
  final DateTime? data;
  @override
  final DocumentReference<Object?>? localizacao;
  @override
  final DocumentReference<Object?>? contato;
  @override
  final String? descricao;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ColetaRecord([void Function(ColetaRecordBuilder)? updates]) =>
      (new ColetaRecordBuilder()..update(updates))._build();

  _$ColetaRecord._(
      {this.data, this.localizacao, this.contato, this.descricao, this.ffRef})
      : super._();

  @override
  ColetaRecord rebuild(void Function(ColetaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ColetaRecordBuilder toBuilder() => new ColetaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ColetaRecord &&
        data == other.data &&
        localizacao == other.localizacao &&
        contato == other.contato &&
        descricao == other.descricao &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, localizacao.hashCode);
    _$hash = $jc(_$hash, contato.hashCode);
    _$hash = $jc(_$hash, descricao.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ColetaRecord')
          ..add('data', data)
          ..add('localizacao', localizacao)
          ..add('contato', contato)
          ..add('descricao', descricao)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ColetaRecordBuilder
    implements Builder<ColetaRecord, ColetaRecordBuilder> {
  _$ColetaRecord? _$v;

  DateTime? _data;
  DateTime? get data => _$this._data;
  set data(DateTime? data) => _$this._data = data;

  DocumentReference<Object?>? _localizacao;
  DocumentReference<Object?>? get localizacao => _$this._localizacao;
  set localizacao(DocumentReference<Object?>? localizacao) =>
      _$this._localizacao = localizacao;

  DocumentReference<Object?>? _contato;
  DocumentReference<Object?>? get contato => _$this._contato;
  set contato(DocumentReference<Object?>? contato) => _$this._contato = contato;

  String? _descricao;
  String? get descricao => _$this._descricao;
  set descricao(String? descricao) => _$this._descricao = descricao;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ColetaRecordBuilder() {
    ColetaRecord._initializeBuilder(this);
  }

  ColetaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _localizacao = $v.localizacao;
      _contato = $v.contato;
      _descricao = $v.descricao;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ColetaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ColetaRecord;
  }

  @override
  void update(void Function(ColetaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ColetaRecord build() => _build();

  _$ColetaRecord _build() {
    final _$result = _$v ??
        new _$ColetaRecord._(
            data: data,
            localizacao: localizacao,
            contato: contato,
            descricao: descricao,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
