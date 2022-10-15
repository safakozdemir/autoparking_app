import 'package:flutter/material.dart';

import 'MyExpendedRow.dart';

class Places extends StatefulWidget {
  const Places({Key? key}) : super(key: key);

  @override
  _PlacesState createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  String emptyOrFilled = 'Filled';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text('Places',
                style: TextStyle(fontSize: 20, color: Colors.amberAccent))),
      ),
      body: Column(children: [
        MyExpendedRow(emptyOrFilled: emptyOrFilled),
        MyExpendedRow(emptyOrFilled: emptyOrFilled),
        MyExpendedRow(emptyOrFilled: emptyOrFilled),
      ]),
    );
  }
}
