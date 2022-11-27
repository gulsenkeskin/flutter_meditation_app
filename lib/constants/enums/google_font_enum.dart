import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum GoogleFont{
  @JsonValue('HelveticaNeue')
  helveticaNeue,
  @JsonValue('Airbnb Cereal App')
  airbnbCerealApp,


}