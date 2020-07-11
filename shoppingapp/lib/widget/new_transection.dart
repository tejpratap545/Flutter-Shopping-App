import 'package:flutter/material.dart';

class NewTransection extends StatelessWidget {
  final titleControler = TextEditingController(text: 'title');
  final amonntControler = TextEditingController(text: '0.0');
  final Function _addTransection;
  NewTransection(this._addTransection);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Tiltle'),
            controller: titleControler,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amont'),
            controller: amonntControler,
          ),
          FlatButton(
              textColor: Colors.purple,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: Text('Add Trransection'),
              ),
              onPressed: () => _addTransection(
                  titleControler.text, double.parse(amonntControler.text))),
        ],
      ),
    );
  }
}
