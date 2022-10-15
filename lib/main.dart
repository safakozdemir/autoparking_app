import 'package:flutter/material.dart';
import 'MyExpendedRow.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  static const String _title = 'Parking App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),
      title: _title,
      home: Scaffold(
        appBar: AppBar(
            title: const Center(
          child: Text(
            _title,
            style: TextStyle(color: Colors.orange),
          ),
        )),
        body: Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String emptyOrFilled = 'Filled';
  int sayfaIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      MyExpendedRow(emptyOrFilled: emptyOrFilled),
      MyExpendedRow(emptyOrFilled: emptyOrFilled),
      MyExpendedRow(emptyOrFilled: emptyOrFilled),
      BottomNavigationBar(
        onTap: (int i) {
          switch (i) {
            case 0:
              print('Tıkladınız Places');
              setState(() {
                sayfaIndex = 0;
              });
              break;
            case 1:
              print('Tıkladığınız ParkingMap');
              setState(() {
                sayfaIndex = 1;
              });
              break;
            case 2:
              print('Tıkladığınız Reservation');
              setState(() {
                sayfaIndex = 2;
              });
              break;
          }
        },
        currentIndex: sayfaIndex,
        backgroundColor: Colors.black38,
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
      )
    ]);
  }
}
