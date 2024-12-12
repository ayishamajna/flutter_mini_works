import 'package:flutter/material.dart';
import 'package:flutter_works/widgets/BlackContainer.dart';
import 'package:flutter_works/widgets/whiteContainer.dart';

class CustomChessBoard extends StatefulWidget {
  const CustomChessBoard({super.key});

  @override
  State<CustomChessBoard> createState() => _CustomChessBoardState();
}

class _CustomChessBoardState extends State<CustomChessBoard> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
              Blackcontainer(),
              WhiteContainer(),
            ],
          ),
        ],
      ),
    );
  }
}
