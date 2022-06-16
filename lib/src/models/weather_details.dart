part of models;

abstract class WeatherDetails implements Built<WeatherDetails, WeatherDetailsBuilder> {
  factory WeatherDetails([void Function(WeatherDetailsBuilder b) updates]) = _$WeatherDetails;
  factory WeatherDetails.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  WeatherDetails._();

  BuiltList<Weather> get weather;

  Main get main;

  String? get name;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<WeatherDetails> get serializer => _$weatherDetailsSerializer;
}
