import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyDp extends StatefulWidget {
  const MyDp({super.key});

  @override
  State<MyDp> createState() => _MyDpState();
}

class _MyDpState extends State<MyDp> {
  File? _image;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.green,
              child: Icon(Icons.person),
              backgroundImage: _image != null ? FileImage(_image!) : null,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  dialougebox(context);
                },
                child: Text(
                  'Change Dp',
                )),
          ],
        ),
      ),
    );
  }

  void dialougebox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => SimpleDialog(
              title: Text('choose'),
              children: [
                SimpleDialogOption(
                  onPressed: () {
                    _imageFromGallery();
                  },
                  child: Text('Gallery'),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    _imageFromCamera();
                  },
                  child: Text('Camera'),
                )
              ],
            ));
  }

  Future<void> _imageFromGallery() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _imageFromCamera() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }
}
