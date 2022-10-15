import 'package:flutter/material.dart';

import 'MyExpendedRow.dart';

class Reservation extends StatefulWidget {
  const Reservation({Key? key}) : super(key: key);

  @override
  _ReservationState createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  String emptyOrFilled = 'Filled';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text('Reservation',
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
