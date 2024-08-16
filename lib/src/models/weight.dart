import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cat_breeds/src/models/serializers.dart';

part 'weight.g.dart';

abstract class Weight implements Built<Weight, WeightBuilder> {
  factory Weight([void Function(WeightBuilder) updates]) = _$Weight;
  Weight._();

  String get imperial;
  String get metric;

  Object? toJson() {
    return serializers.serializeWith(Weight.serializer, this);
  }

  static Weight? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Weight.serializer, json);
  }

  static Serializer<Weight> get serializer => _$weightSerializer;
}
