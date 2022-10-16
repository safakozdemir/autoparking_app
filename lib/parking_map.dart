import 'package:flutter/material.dart';

import 'my_expended_row.dart';

class ParkingMap extends StatefulWidget {
  const ParkingMap({Key? key}) : super(key: key);

  @override
  ParkingMapState createState() => ParkingMapState();
}

class ParkingMapState extends State<ParkingMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Center(
            child: Text('Parking Map',
                style: TextStyle(fontSize: 20, color: Colors.black))),
      ),
      body: Container(
        color: Colors.amberAccent[100],
        child: Column(children: [
          MyExpendedRow(),
          MyExpendedRow(),
          MyExpendedRow(),
        ]),
      ),
    );
  }
}
