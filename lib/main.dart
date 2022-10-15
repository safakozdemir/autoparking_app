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
  int sayfaIndex = 0;
  Widget? aktifSayfa;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: aktifSayfa,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int i) {
          switch (i) {
            case 0:
              setState(() {
                sayfaIndex = 0;
                aktifSayfa = Places();
              });
              break;
            case 1:
              setState(() {
                sayfaIndex = 1;
                aktifSayfa = ParkingMap();
              });
              break;
            case 2:
              setState(() {
                sayfaIndex = 2;
                aktifSayfa = Reservation();
              });
              break;
          }
        },
        currentIndex: sayfaIndex,
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
