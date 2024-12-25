import 'package:flutter/material.dart';

class MyToggle extends StatefulWidget {
  const MyToggle({super.key});

  @override
  State<MyToggle> createState() => _MyToggleState();
}

class _MyToggleState extends State<MyToggle> {
  bool _switched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              _switched = !_switched;
            });
          },
          child: Text(_switched ? 'on' : 'off'),
          style: ElevatedButton.styleFrom(
              backgroundColor: _switched ? Colors.green : Colors.red,
              foregroundColor: Colors.white),
        ),
      ),
    );
  }
}
