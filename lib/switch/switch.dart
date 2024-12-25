import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool _switched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _switched ? Colors.black : Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Switch(
            value: _switched,
            onChanged: (value) {
              setState(() {
                _switched = value;
              });
            },
          ),
          Text(
            _switched ? 'dark mode' : 'light mode',
            style: TextStyle(color: _switched ? Colors.white : Colors.black),
          )
        ],
      )),
    );
  }
}
