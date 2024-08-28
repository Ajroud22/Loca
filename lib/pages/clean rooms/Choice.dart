import 'package:flutter/material.dart';
import 'package:loca/pages/clean%20rooms/Loca_1.dart';
import 'package:loca/pages/clean%20rooms/Loca_2.dart';
import 'package:loca/pages/clean%20rooms/Oca_1.dart';
import 'package:loca/pages/clean%20rooms/Oca_2.dart';




class Choice extends StatefulWidget {
  const Choice({super.key});

  @override
  _RoomSelectionScreenState createState() => _RoomSelectionScreenState();
}

class _RoomSelectionScreenState extends State<Choice> {
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
            children: [
              Text(
                'Choose your clean room',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RoomButton(roomName: 'Loca-1', roomIcon: Icons.cabin_rounded, onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Loca_1()),
                    );
                  }),
                  RoomButton(roomName: 'Loca-2', roomIcon: Icons.cabin_rounded, onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Loca_2()),
                    );
                  }),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RoomButton(roomName: 'oca-1', roomIcon: Icons.cabin_rounded, onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Oca_1()),
                    );
                  }),
                  RoomButton(roomName: 'oca-2', roomIcon: Icons.cabin_rounded, onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Oca_2()),
                    );
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoomButton extends StatelessWidget {
  final String roomName;
  final IconData roomIcon;
  final VoidCallback onPressed;

  const RoomButton({super.key, required this.roomName, required this.roomIcon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(roomIcon, size: 80),
        ),
        Text(
          roomName,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}
