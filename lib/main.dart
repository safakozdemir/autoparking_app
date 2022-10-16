import 'package:flutter/material.dart';
import 'ParkingMap.dart';
import 'Places.dart';
import 'Reservation.dart';

void main() => runApp(const MaterialApp(
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),
      title: 'Parking App',
    ));

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int pageIndex = 0;
  Widget? activePage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int i) {
          switch (i) {
            case 0:
              setState(() {
                pageIndex = 0;
                activePage = const Places();
              });
              break;
            case 1:
              setState(() {
                pageIndex = 1;
                activePage = const ParkingMap();
              });
              break;
            case 2:
              setState(() {
                pageIndex = 2;
                activePage = const Reservation();
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
