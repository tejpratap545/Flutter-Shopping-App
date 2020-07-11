import 'package:flutter/material.dart';

class NewTransection extends StatefulWidget {
  final Function _addTransection;

  NewTransection(this._addTransection);

  @override
  _NewTransectionState createState() => _NewTransectionState();
}

class _NewTransectionState extends State<NewTransection> {
  final amountFocus = FocusNode();

  final titleControler = TextEditingController(text: '');

  final amonntControler = TextEditingController(text: '0.0');

  @override
  Widget build(BuildContext context) {
    void submitData() {
      if (titleControler.text == '' &&
          double.parse(amonntControler.text) == 0) {
        return;
      }

      widget._addTransection(
        titleControler.text,
        double.parse(amonntControler.text),
      );
      Navigator.of(context).pop();
    }

    return Card(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Tiltle'),
            controller: titleControler,
            textInputAction: TextInputAction.next,
            onSubmitted: (v) {
              FocusScope.of(context).requestFocus(amountFocus);
            },
          ),
          TextField(
            focusNode: amountFocus,
            decoration: InputDecoration(labelText: 'Amont'),
            keyboardType: TextInputType.number,
            controller: amonntControler,
            onSubmitted: (_) => submitData(),
          ),
          FlatButton(
              textColor: Colors.purple,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: Text('Add Trransection'),
              ),
              onPressed: () => submitData()),
        ],
      ),
    );
  }
}
