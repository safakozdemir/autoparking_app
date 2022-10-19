import 'package:flutter/material.dart';
import 'places.dart';

void main() => runApp(const MaterialApp(
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      title: 'Parking App',
    ));

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Places(),
    );
  }
}
