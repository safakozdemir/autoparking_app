import 'package:flutter/material.dart';

import 'MyExpendedRow.dart';

class ParkingMap extends StatefulWidget {
  const ParkingMap({Key? key}) : super(key: key);

  @override
  _ParkingMapState createState() => _ParkingMapState();
}

class _ParkingMapState extends State<ParkingMap> {
  String emptyOrFilled = 'Filled';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text('Parking Map',
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
