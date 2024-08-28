import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:loca/models/sensors.dart';
class Data_Loca1_I extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
DatabaseReference ref = FirebaseDatabase.instance.ref();
class _MyHomePageState extends State<Data_Loca1_I> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Visteon',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              'Data Loca-1',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

          ],



        ),
      ),
      body: StreamBuilder(
        stream: ref.onValue,
        builder: (context, snapshot) {
          print(snapshot.data);
          if (snapshot.hasData) { 
                     SensorsModel sensors= SensorsModel.fromJson(snapshot.data!.snapshot.value as Map<dynamic,dynamic>);

                     return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Temperature',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.thermostat,
                      size: 50,
                    ),
                    SizedBox(width: 30),
                    Text(
                      sensors.temperature.toString(),
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Text(
                  'Humidity',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.water,
                      size: 50,
                    ),
                    SizedBox(width: 30),
                    Text(
                      '40%',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Manage Data',
                    style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          );}else{return Text('Error');}

        }
      ),
    );
  }
}