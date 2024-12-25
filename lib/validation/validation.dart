import 'package:flutter/material.dart';
import 'package:flutter_works/homepage.dart';

class MyValidation extends StatefulWidget {
  const MyValidation({super.key});

  @override
  State<MyValidation> createState() => _MyValidationState();
}

class _MyValidationState extends State<MyValidation> {
  final _formkey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter your name";
                  } else if (value.length <= 5) {
                    return "enter more than 5 characters";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  hintText: 'username',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _email,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "please enter your mail id";
                } else if (!RegExp(r'^[^@]+@[^@]+.[^@]+').hasMatch(value)) {
                  return "plese enter valid id";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                hintText: 'email',
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(onPressed: _submit, child: Text('login'))
          ],
        ),
      ),
    );
  }

  void _submit() {
    if (_formkey.currentState!.validate()) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Homepage()));
    }
  }
}
