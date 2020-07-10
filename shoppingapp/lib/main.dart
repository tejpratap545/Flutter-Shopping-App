import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomePage',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_alert),
            onPressed: null,
          ),
          IconButton(
            icon: const Icon(Icons.access_alarms),
            onPressed: null,
          )
        ],
        elevation: 10,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue[200],
              elevation: 12,
              child: Text(
                'chart ',
              ),
            ),
          ),
          Container(
            child: Card(
              child: Text(
                'List of',
              ),
            ),
          )
        ],
      ),
    );
  }
}
