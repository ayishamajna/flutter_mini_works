import 'package:flutter/material.dart';

class Blackcontainer extends StatelessWidget {
  const Blackcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
