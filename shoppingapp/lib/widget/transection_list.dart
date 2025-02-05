import 'package:flutter/material.dart';
import '../models/transection.dart';
import 'package:intl/intl.dart';

class TransectionList extends StatelessWidget {
  final List<Transection> _transectionsList;
  TransectionList(this._transectionsList);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
        itemCount: _transectionsList.length,
        itemBuilder: (context, index) => Card(
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
                    color: Theme.of(context).primaryColor,
                    width: 2,
                  ),
                ),
                child: Text(
                  '\$ ${_transectionsList[index].amount.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _transectionsList[index].title,
                    // ignore: deprecated_member_use
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    DateFormat.yMMMMEEEEd()
                        .format(_transectionsList[index].date),
                    style: TextStyle(
                      color: Colors.pink,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
