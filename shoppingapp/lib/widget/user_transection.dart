import 'package:flutter/material.dart';
import './new_transection.dart';
import './transection_list.dart';
import '../models/transection.dart';

class UserTransection extends StatefulWidget {
  @override
  _UserTransectionState createState() => _UserTransectionState();
}

class _UserTransectionState extends State<UserTransection> {
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
    print("hwllo" + txTitle);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        NewTransection(_addTransection),
        TransectionList(transections),
      ],
    );
  }
}
