import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cat_breeds/src/models/weight.dart';
import 'package:cat_breeds/src/models/serializers.dart';

part 'breeds.g.dart';

abstract class Breeds implements Built<Breeds, BreedsBuilder> {
  factory Breeds([void Function(BreedsBuilder) updates]) = _$Breeds;
  Breeds._();

  Weight get weight;
  String get id;
  String get name;
  @BuiltValueField(wireName: 'cfa_url')
  String? get cfaUrl;
  @BuiltValueField(wireName: 'vetstreet_url')
  String? get vetstreetUrl;
  @BuiltValueField(wireName: 'vcahospitals_url')
  String? get vcahospitalsUrl;
  String get temperament;
  String get origin;
  @BuiltValueField(wireName: 'country_codes')
  String get countryCodes;
  @BuiltValueField(wireName: 'country_code')
  String get countryCode;
  String get description;
  @BuiltValueField(wireName: 'life_span')
  String get lifeSpan;
  int get indoor;
  @BuiltValueField(wireName: 'alt_names')
  String? get altNames;
  int get adaptability;
  @BuiltValueField(wireName: 'affection_level')
  int get affectionLevel;
  @BuiltValueField(wireName: 'child_friendly')
  int get childFriendly;
  @BuiltValueField(wireName: 'dog_friendly')
  int get dogFriendly;
  @BuiltValueField(wireName: 'energy_level')
  int get energyLevel;
  int get grooming;
  @BuiltValueField(wireName: 'health_issues')
  int get healthIssues;
  int get intelligence;
  @BuiltValueField(wireName: 'shedding_level')
  int get sheddingLevel;
  @BuiltValueField(wireName: 'social_needs')
  int get socialNeeds;
  @BuiltValueField(wireName: 'stranger_friendly')
  int get strangerFriendly;
  int get vocalisation;
  int get experimental;
  int get hairless;
  int get natural;
  int get rare;
  int get rex;
  @BuiltValueField(wireName: 'suppressed_tail')
  int get suppressedTail;
  @BuiltValueField(wireName: 'short_legs')
  int get shortLegs;
  @BuiltValueField(wireName: 'wikipedia_url')
  String? get wikipediaUrl;
  int get hypoallergenic;
  @BuiltValueField(wireName: 'reference_image_id')
  String? get referenceImageId;

  Object? toJson() {
    return serializers.serializeWith(Breeds.serializer, this);
  }

  static Breeds? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Breeds.serializer, json);
  }

  static Serializer<Breeds> get serializer => _$breedsSerializer;
}
