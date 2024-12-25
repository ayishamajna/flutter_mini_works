import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black,
        body: Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child: Card(
          color: Colors.grey[400],
          elevation: 20,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
          child: Center(
            child: Text(
              'haii',
              style: TextStyle(
                color: Colors.green[900],
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
