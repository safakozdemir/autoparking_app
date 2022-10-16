import 'package:flutter/material.dart';

import 'my_expended_row.dart';

class Reservation extends StatefulWidget {
  const Reservation({Key? key}) : super(key: key);

  @override
  ReservationState createState() => ReservationState();
}

class ReservationState extends State<Reservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Center(
            child: Text('Reservation',
                style: TextStyle(fontSize: 20, color: Colors.black))),
      ),
      body: Column(children: [
        MyExpendedRow(),
        MyExpendedRow(),
        MyExpendedRow(),
      ]),
    );
  }
}
