import 'package:flutter/material.dart';
import 'package:parkingapp/places.dart';
import 'package:parkingapp/reservation.dart';
import 'my_expended_row.dart';

class ParkingMap extends StatefulWidget {
  const ParkingMap({Key? key}) : super(key: key);

  @override
  ParkingMapState createState() => ParkingMapState();
}

class ParkingMapState extends State<ParkingMap> {
  int pageIndex = 0;
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
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int i) {
          switch (i) {
            case 0:
              setState(() {
                pageIndex = 0;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Places(),
                  ),
                );
              });
              break;
            case 1:
              setState(() {
                pageIndex = 1;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ParkingMap(),
                  ),
                );
              });
              break;
            case 2:
              setState(() {
                pageIndex = 2;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Reservation(),
                  ),
                );
              });
              break;
          }
        },
        currentIndex: pageIndex,
        backgroundColor: Colors.amberAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            tooltip: 'Parking places page',
            icon: Icon(Icons.place),
            label: 'Places',
          ),
          BottomNavigationBarItem(
            tooltip: 'Parking map page',
            icon: Icon(Icons.map_outlined),
            label: 'Parking map',
          ),
          BottomNavigationBarItem(
            tooltip: 'Reservation page',
            icon: Icon(Icons.monetization_on_outlined),
            label: 'Reservation',
          ),
        ],
      ),
    );
  }
}
