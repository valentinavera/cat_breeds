import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:cat_breeds/src/models/breeds.dart';
import 'package:cat_breeds/src/models/serializers.dart';

part 'cat.g.dart';

abstract class Cat implements Built<Cat, CatBuilder> {
  factory Cat([void Function(CatBuilder) updates]) = _$Cat;
  Cat._();

  String get id;
  String get url;
  num get width;
  num get height;
  BuiltList<Breeds> get breeds;

  Object? toJson() {
    return serializers.serializeWith(Cat.serializer, this);
  }

  static Cat? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Cat.serializer, json);
  }

  static Serializer<Cat> get serializer => _$catSerializer;
}
