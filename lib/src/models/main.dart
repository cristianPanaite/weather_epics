part of models;

abstract class Main implements Built<Main, MainBuilder> {
  factory Main([void Function(MainBuilder b) updates]) = _$Main;

  factory Main.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Main._();

  double? get temp;

  double? get feels_like;

  double? get temp_min;

  double? get temp_max;

  double? get pressure;

  double? get humidity;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Main> get serializer => _$mainSerializer;
}
