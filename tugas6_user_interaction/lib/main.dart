import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, String>> appList = [
    {
      "title": "Native App",
      "details": "Android, iOS\nKotlin, Swift",
    },
    {
      "title": "Hybrid App",
      "details": "Android, iOS, Web\nJavaScript, Dart",
    },
  ];

  void _showDetails(BuildContext context, String title, String details) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Detail"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 8),
              Text(details),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Close",
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App List'),
        backgroundColor: const Color.fromARGB(255, 134, 173, 193),
      ),
      body: ListView.builder(
        itemCount: appList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(
              Icons.circle,
              color: index == 0 ? Colors.red : Colors.grey,
              size: 40,
            ),
            title:
                Text(appList[index]["title"]!, style: TextStyle(fontSize: 18)),
            onTap: () {
              _showDetails(context, appList[index]["title"]!,
                  appList[index]["details"]!);
            },
          );
        },
      ),
    );
  }
}
