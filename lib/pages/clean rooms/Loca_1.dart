import 'package:flutter/material.dart';
import 'package:loca/pages/data/Data_Loca1_U.dart';
import 'package:loca/pages/data/Data_Loca1_L.dart';
import 'package:loca/pages/data/Data_Loca1_I.dart';
import 'package:loca/pages/data/Data_Loca1_O.dart';


class Loca_1 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Loca_1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Visteon',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Loca-1',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Regions',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                                              Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Data_Loca1_U()),
                    );
                        },
                        child: Icon(Icons.arrow_downward, size: 48),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(20),
                          foregroundColor: Colors.black, 
                          backgroundColor: Colors.white, 
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Unload',
                        style: TextStyle(fontSize: 30, color: Colors.orange),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                                              Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Data_Loca1_L()),
                    );
                        },
                        child: Icon(Icons.build_circle, size: 48),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(20),
                          foregroundColor: Colors.black, 
                          backgroundColor: Colors.white, 
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '  Loca',
                        style: TextStyle(fontSize: 30, color: Colors.orange),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                                              Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Data_Loca1_I()),
                    );
                        },
                        child: Icon(Icons.camera_alt, size: 48),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(20),
                          foregroundColor: Colors.black, 
                          backgroundColor: Colors.white, 
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Inspection',
                        style: TextStyle(fontSize: 30, color: Colors.orange),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                                              Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Data_Loca1_O()),
                    );
                        },
                        child: Icon(Icons.kitchen, size: 48),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(20),
                          foregroundColor: Colors.black, 
                          backgroundColor: Colors.white, 
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Oven',
                        style: TextStyle(fontSize: 30, color: Colors.orange),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}