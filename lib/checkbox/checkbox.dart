import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool _falsechecker = false;
  bool _truechecker = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    value: _truechecker,
                    onChanged: (value) {
                      setState(() {
                        _truechecker = value!;
                        _falsechecker = false;
                      });
                    }),
                Text('true'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    value: _falsechecker,
                    onChanged: (value) {
                      setState(() {
                        _falsechecker = value!;
                        _truechecker = false;
                      });
                    }),
                Text('false'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
