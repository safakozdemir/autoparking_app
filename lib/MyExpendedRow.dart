import 'package:flutter/material.dart';

class MyExpendedRow extends StatefulWidget {
  MyExpendedRow({
    Key? key,
  }) : super(key: key);

  @override
  State<MyExpendedRow> createState() => _MyExpendedRowState();
}

class _MyExpendedRowState extends State<MyExpendedRow> {
  var a = 1;

  Color _color1 = Colors.black54;
  Color _color2 = Colors.black54;
  Color _circleAvatarColor1 = Colors.redAccent;
  Color _circleAvatarColor2 = Colors.redAccent;
  String emptyOrFilled1 = 'EMPTY';
  String emptyOrFilled2 = 'EMPTY';
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(children: [
        Expanded(
          child: GestureDetector(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                border: Border.all(width: 5),
                color: _color1,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Parking Place',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: _circleAvatarColor1,
                    child: Icon(
                      color: Colors.white,
                      Icons.local_parking,
                      size: 60,
                    ),
                  ),
                  Text(
                    emptyOrFilled1,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  )
                ],
              ),
            ),
            onTap: () {
              print('execute motors$a');

              setState(() {
                _color1 == Colors.yellow
                    ? _color1 = Colors.black54
                    : _color1 = Colors.yellow;
                emptyOrFilled1 == 'FİLLED'
                    ? emptyOrFilled1 = 'EMPTY'
                    : emptyOrFilled1 = 'FİLLED';
                _circleAvatarColor1 == Colors.green
                    ? _circleAvatarColor1 = Colors.redAccent
                    : _circleAvatarColor1 = Colors.green;
              });

              a++;
            },
          ),
        ),
        Expanded(
          child: GestureDetector(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                border: Border.all(width: 5),
                color: _color2,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Parking Place',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: _circleAvatarColor2,
                    child: Icon(
                      color: Colors.white,
                      Icons.local_parking,
                      size: 60,
                    ),
                  ),
                  Text(
                    emptyOrFilled2,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  )
                ],
              ),
            ),
            onTap: () {
              print('execute motors$a');
              setState(() {
                _color2 == Colors.yellow
                    ? _color2 = Colors.black54
                    : _color2 = Colors.yellow;
                emptyOrFilled2 == 'FİLLED'
                    ? emptyOrFilled2 = 'EMPTY'
                    : emptyOrFilled2 = 'FİLLED';
                _circleAvatarColor2 == Colors.green
                    ? _circleAvatarColor2 = Colors.redAccent
                    : _circleAvatarColor2 = Colors.green;
              });

              a++;
            },
          ),
        ),
      ]),
    );
  }
}
