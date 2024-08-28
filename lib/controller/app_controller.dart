import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:loca/models/sensors.dart';


class AppController with ChangeNotifier{

  DatabaseReference ref = FirebaseDatabase.instance.ref();

  Future<bool> sendData()async{
    final sensor =SensorsModel(temperature: 60, humidity: 20,);
await ref.set(sensor.toJson());
return true;
  }
 
 Future<void> fillTank(int value)async{
    await ref.update({
  "fillTank": 'ON',
});
Future.delayed(const Duration(milliseconds: 200),()async{
    await ref.update({
  "fillTank": 'OFF',
  "waterTank":value
});
});
 }

  Future<void> cooling(int value)async{
    await ref.update({
  "fan": 'COOLING',
});
Future.delayed(const Duration(milliseconds: 200),()async{
    await ref.update({
  "temperature": value,
  "fan":'OFF'
});
});
 }

  Future<void> heating(int value)async{
    await ref.update({
  "fan": 'HEATING',
});
Future.delayed(const Duration(milliseconds: 200),()async{
    await ref.update({
  "temperature": value,
  "fan":'OFF'
});
});
 }

  Future<void> watering(int value)async{
    await ref.update({
  "watering": 'ON',
});
Future.delayed(const Duration(milliseconds: 200),()async{
    await ref.update({
  "humidity": value,
  "watering":'OFF'
});
});
 }

}