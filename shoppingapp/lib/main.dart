import 'package:flutter/material.dart';
import 'package:shoppingapp/widget/new_transection.dart';

import './models/transection.dart';
import './widget/transection_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fultter Home Page',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Quicksand',
        textTheme: ThemeData.light().textTheme.copyWith(
              // ignore: deprecated_member_use
              title: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.purple,
              ),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                // ignore: deprecated_member_use
                title: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Transection> transections = [
    Transection(
      id: 1,
      title: 'Physics Book',
      amount: 1320.90,
      date: DateTime.now(),
    ),
    Transection(
      id: 2,
      title: 'Math Book 12th ',
      amount: 560.20,
      date: DateTime.now(),
    ),
    Transection(
      id: 3,
      title: 'Chemistry Book ',
      amount: 522.20,
      date: DateTime.now(),
    )
  ];

  void _addTransection(String txTitle, double txAmount) {
    final newTx = Transection(
      id: transections.length + 1,
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
    );
    setState(() {
      transections.add(newTx);
    });
  }

  void startNewTransection(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: NewTransection(_addTransection),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => startNewTransection(context),
          ),
        ],
        elevation: 10,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              height: 60,
              width: double.infinity,
              child: Card(
                color: Colors.grey[300],
                elevation: 12,
                child: Center(
                  child: Text(
                    'Transection List ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              child: Container(
                child: TransectionList(
                  transections,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => startNewTransection(
          context,
        ),
      ),
    );
  }
}
