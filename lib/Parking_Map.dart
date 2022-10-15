import 'package:flutter/material.dart';

class ParkingMap extends StatefulWidget {
  const ParkingMap({Key? key}) : super(key: key);

  @override
  _ParkingMapState createState() => _ParkingMapState();
}

class _ParkingMapState extends State<ParkingMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parking Map'),
      ),
    );
  }
}
