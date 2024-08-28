import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class SensorsModel extends Equatable{
  int temperature;
  int humidity;

  
  SensorsModel({required this.temperature,required this.humidity});
  @override
  List<Object?> get props => [temperature,humidity,];

  factory SensorsModel.fromJson(Map<dynamic,dynamic>json)=>SensorsModel(
    temperature: json['temperature'],
    humidity: json['humidity'],
  );
  Map<String,dynamic> toJson()=>{
    'temperature':temperature,
    'humidity':humidity,
  };  
}