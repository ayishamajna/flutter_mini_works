import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  final List<String> _districts = [
    "Thiruvananthapuram",
    "Kollam",
    "Pathanamthitta",
    "Alapuzha",
    "Kottayam",
    "Idukki",
    "Ernakulam",
    "Thrissur",
    "palakkad",
    "Malappuram",
    "Kozhikode",
    "Kannur",
    "Ksarkod",
  ];
  String? _selectDistrict;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('select a district'),
            SizedBox(
              width: 400,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                ),
                value: _selectDistrict,
                items: _districts.map((district) {
                  return DropdownMenuItem(
                      value: district, child: Text(district));
                }).toList(),
                onChanged: (value) {
                  _selectDistrict = value;
                },
                hint: Text('choose district'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
