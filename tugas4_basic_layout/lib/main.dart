import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome,',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '2211104003 - Atika Aji Hadiyani',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.purple],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
