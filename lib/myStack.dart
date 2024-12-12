import 'package:flutter/material.dart';

class MyStack extends StatefulWidget {
  const MyStack({super.key});

  @override
  State<MyStack> createState() => _StackState();
}

class _StackState extends State<MyStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
          Positioned(
            left: 40,
            top: 40,
            child: Container(
              height: 180,
              width: 180,
              color: Colors.black,
            ),
          ),
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              height: 140,
              width: 140,
              color: Colors.purple,
            ),
          ),
        ],
      )),
    );
  }
}
