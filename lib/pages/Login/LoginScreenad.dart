import 'package:flutter/material.dart';
import 'package:loca/pages/Login/Passwordchange.dart';
import 'package:loca/pages/clean%20rooms/Choice.dart';

class LoginScreenad extends StatefulWidget {
  const LoginScreenad({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreenad> {
  final _formKey = GlobalKey<FormState>();
  String? _username, _password, _errorMessage; // Declare _errorMessage here

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
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
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0), // Add padding around the Column
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start, // Align children at the top
                  children: [
                    const Column(
                      children: [
                        Text(
                          'Visteon',
                          style: TextStyle(
                            fontSize: 43,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                        Text(
                          'ISO7',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50), // Add some space between the title and the form
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0), // Add space below the username field
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Username',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) { // Check for null and empty
                            return 'Please enter your username';
                          }
                          return null;
                        },
                        onSaved: (value) => _username = value?? '', // Use null-coalescing operator
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 20.0), // Add space above and below the password field
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) { // Check for null and empty
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        onSaved: (value) => _password = value?? '', // Use null-coalescing operator
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        final currentState = _formKey.currentState;
                        if (currentState!= null && currentState.validate()) {
                          currentState.save();
                          if (_username == 'visteon' && _password == 'admin123') {
                            // Handle login logic here
                            print('Loginsuccessful');
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Choice()),
                            );
                          } else {
                            setState(() {
                              _errorMessage = 'Invalid username or password';
                            });
                          }
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      ),
                      child: const Text('Login',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    if (_errorMessage != null) // Show error message if it's not null
                      Text(
                        _errorMessage!,
                        style: const TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        final currentState = _formKey.currentState;
                        if (currentState!= null && currentState.validate()) {
                          currentState.save();
                          if (_username == 'visteon' && _password == 'admin123') {
                            // Handle login logic here
                            print('Loginsuccessful');
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Passwordchange()),
                            );
                          } else {
                            setState(() {
                              _errorMessage = 'Invalid username or password';
                            });
                          }
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      ),
                      child: const Text('Change Password',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}