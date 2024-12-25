import 'package:flutter/material.dart';
import 'package:flutter_works/checkbox/checkbox.dart';
import 'package:flutter_works/dp/dp.dart';
import 'package:flutter_works/dropdown/dropdown.dart';
import 'package:flutter_works/list/listseparator.dart';
import 'package:flutter_works/list/listviewbuilder.dart';
import 'package:flutter_works/pickers/imagepicker.dart';
import 'package:flutter_works/radiobutton/MyRadio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyDp());
  }
}
