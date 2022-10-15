import 'package:flutter/material.dart';

class MyExpendedRow extends StatelessWidget {
  MyExpendedRow({
    Key? key,
    required this.emptyOrFilled,
  }) : super(key: key);

  final String emptyOrFilled;

  var a = 1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(children: [
        Expanded(
          child: GestureDetector(
            child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                        backgroundColor: Colors.redAccent,
                        child: Icon(
                          color: Colors.white,
                          Icons.local_parking,
                          size: 60,
                        ),
                      ),
                      Text(
                        emptyOrFilled,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      )
                    ],
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30))),
            onTap: () {
              print('execute motors$a');
              a++;
            },
          ),
        ),
        Expanded(
          child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
                      backgroundColor: Colors.redAccent,
                      child: Icon(
                        color: Colors.white,
                        Icons.local_parking,
                        size: 60,
                      ),
                    ),
                    Text(
                      emptyOrFilled,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    )
                  ],
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30))),
        ),
      ]),
    );
  }
}
