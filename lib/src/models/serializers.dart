import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:cat_breeds/src/models/cat.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cat_breeds/src/models/breeds.dart';
import 'package:cat_breeds/src/models/weight.dart';

part 'serializers.g.dart';

@SerializersFor([
  Cat,
  Breeds,
  Weight,
])
final Serializers serializers = (_$serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin())).build();
