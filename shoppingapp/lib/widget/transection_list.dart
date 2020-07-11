import 'package:flutter/material.dart';
import '../models/transection.dart';
import 'package:intl/intl.dart';

class TransectionList extends StatelessWidget {
  final List<Transection> _transectionsList;
  TransectionList(this._transectionsList);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: _transectionsList
          .map(
            (e) => Card(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green,
                        width: 2,
                      ),
                    ),
                    child: Text(
                      'A: \$ ${e.amount}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        e.title,
                        style: TextStyle(
                          color: Colors.deepPurple,
                        ),
                      ),
                      Text(
                        DateFormat.yMMMEd().format(e.date),
                        style: TextStyle(
                          color: Colors.pink,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
