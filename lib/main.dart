import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loca/pages/Login/Home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

await Firebase.initializeApp(
    options: const FirebaseOptions (
  apiKey: "AIzaSyAAjuxFnDwXeQWmFSh4uSRUl1YO2GvLEjw",
  authDomain: "iso7-6bd18.firebaseapp.com",
  projectId: "iso7-6bd18",
  storageBucket: "iso7-6bd18.appspot.com",
  messagingSenderId: "520742659603",
  appId: "1:520742659603:web:3d4818c0dcc85a39f281e6",
  measurementId: "G-5R14009E98"
  ));
 Firebase.initializeApp();

  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
         debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.white,
        body:Home(),
      ),
    );
  }
}