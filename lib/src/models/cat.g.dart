// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Cat> _$catSerializer = new _$CatSerializer();

class _$CatSerializer implements StructuredSerializer<Cat> {
  @override
  final Iterable<Type> types = const [Cat, _$Cat];
  @override
  final String wireName = 'Cat';

  @override
  Iterable<Object?> serialize(Serializers serializers, Cat object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'width',
      serializers.serialize(object.width, specifiedType: const FullType(num)),
      'height',
      serializers.serialize(object.height, specifiedType: const FullType(num)),
      'breeds',
      serializers.serialize(object.breeds,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Breeds)])),
    ];

    return result;
  }

  @override
  Cat deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CatBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(num))! as num;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(num))! as num;
          break;
        case 'breeds':
          result.breeds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Breeds)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Cat extends Cat {
  @override
  final String id;
  @override
  final String url;
  @override
  final num width;
  @override
  final num height;
  @override
  final BuiltList<Breeds> breeds;

  factory _$Cat([void Function(CatBuilder)? updates]) =>
      (new CatBuilder()..update(updates))._build();

  _$Cat._(
      {required this.id,
      required this.url,
      required this.width,
      required this.height,
      required this.breeds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Cat', 'id');
    BuiltValueNullFieldError.checkNotNull(url, r'Cat', 'url');
    BuiltValueNullFieldError.checkNotNull(width, r'Cat', 'width');
    BuiltValueNullFieldError.checkNotNull(height, r'Cat', 'height');
    BuiltValueNullFieldError.checkNotNull(breeds, r'Cat', 'breeds');
  }

  @override
  Cat rebuild(void Function(CatBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CatBuilder toBuilder() => new CatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Cat &&
        id == other.id &&
        url == other.url &&
        width == other.width &&
        height == other.height &&
        breeds == other.breeds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, breeds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Cat')
          ..add('id', id)
          ..add('url', url)
          ..add('width', width)
          ..add('height', height)
          ..add('breeds', breeds))
        .toString();
  }
}

class CatBuilder implements Builder<Cat, CatBuilder> {
  _$Cat? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  num? _width;
  num? get width => _$this._width;
  set width(num? width) => _$this._width = width;

  num? _height;
  num? get height => _$this._height;
  set height(num? height) => _$this._height = height;

  ListBuilder<Breeds>? _breeds;
  ListBuilder<Breeds> get breeds =>
      _$this._breeds ??= new ListBuilder<Breeds>();
  set breeds(ListBuilder<Breeds>? breeds) => _$this._breeds = breeds;

  CatBuilder();

  CatBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _url = $v.url;
      _width = $v.width;
      _height = $v.height;
      _breeds = $v.breeds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Cat other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Cat;
  }

  @override
  void update(void Function(CatBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Cat build() => _build();

  _$Cat _build() {
    _$Cat _$result;
    try {
      _$result = _$v ??
          new _$Cat._(
              id: BuiltValueNullFieldError.checkNotNull(id, r'Cat', 'id'),
              url: BuiltValueNullFieldError.checkNotNull(url, r'Cat', 'url'),
              width:
                  BuiltValueNullFieldError.checkNotNull(width, r'Cat', 'width'),
              height: BuiltValueNullFieldError.checkNotNull(
                  height, r'Cat', 'height'),
              breeds: breeds.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'breeds';
        breeds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Cat', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
