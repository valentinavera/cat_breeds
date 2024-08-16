// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Weight> _$weightSerializer = new _$WeightSerializer();

class _$WeightSerializer implements StructuredSerializer<Weight> {
  @override
  final Iterable<Type> types = const [Weight, _$Weight];
  @override
  final String wireName = 'Weight';

  @override
  Iterable<Object?> serialize(Serializers serializers, Weight object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'imperial',
      serializers.serialize(object.imperial,
          specifiedType: const FullType(String)),
      'metric',
      serializers.serialize(object.metric,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Weight deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeightBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'imperial':
          result.imperial = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'metric':
          result.metric = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Weight extends Weight {
  @override
  final String imperial;
  @override
  final String metric;

  factory _$Weight([void Function(WeightBuilder)? updates]) =>
      (new WeightBuilder()..update(updates))._build();

  _$Weight._({required this.imperial, required this.metric}) : super._() {
    BuiltValueNullFieldError.checkNotNull(imperial, r'Weight', 'imperial');
    BuiltValueNullFieldError.checkNotNull(metric, r'Weight', 'metric');
  }

  @override
  Weight rebuild(void Function(WeightBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeightBuilder toBuilder() => new WeightBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Weight &&
        imperial == other.imperial &&
        metric == other.metric;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imperial.hashCode);
    _$hash = $jc(_$hash, metric.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Weight')
          ..add('imperial', imperial)
          ..add('metric', metric))
        .toString();
  }
}

class WeightBuilder implements Builder<Weight, WeightBuilder> {
  _$Weight? _$v;

  String? _imperial;
  String? get imperial => _$this._imperial;
  set imperial(String? imperial) => _$this._imperial = imperial;

  String? _metric;
  String? get metric => _$this._metric;
  set metric(String? metric) => _$this._metric = metric;

  WeightBuilder();

  WeightBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imperial = $v.imperial;
      _metric = $v.metric;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Weight other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Weight;
  }

  @override
  void update(void Function(WeightBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Weight build() => _build();

  _$Weight _build() {
    final _$result = _$v ??
        new _$Weight._(
            imperial: BuiltValueNullFieldError.checkNotNull(
                imperial, r'Weight', 'imperial'),
            metric: BuiltValueNullFieldError.checkNotNull(
                metric, r'Weight', 'metric'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
