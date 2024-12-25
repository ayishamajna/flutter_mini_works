import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  String _selectGender = "female";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            RadioListTile<String>(
                title: Text('female'),
                value: 'female',
                groupValue: _selectGender,
                onChanged: (value) {
                  setState(() {
                    _selectGender = value!;
                  });
                }),
            RadioListTile<String>(
                title: Text('male'),
                value: 'male',
                groupValue: _selectGender,
                onChanged: (value) {
                  setState(() {
                    _selectGender = value!;
                  });
                }),
            RadioListTile<String>(
                title: Text('others'),
                value: 'others',
                groupValue: _selectGender,
                onChanged: (value) {
                  setState(() {
                    _selectGender = value!;
                  });
                })
          ],
        ),
      ),
    );
  }
}
