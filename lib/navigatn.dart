import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Navigatn extends StatefulWidget {
  const Navigatn({super.key});

  @override
  State<Navigatn> createState() => _NavigatnState();
}

class _NavigatnState extends State<Navigatn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.yellow,
          toolbarHeight: 70,
          leading: const Icon(Icons.arrow_downward),
          title: Text('Now playing'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.music_note),
            )
          ]),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            color: Colors.black,
          ),
          label: "home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          label: 'search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.library_add,
            color: Colors.black,
          ),
          label: 'library',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.fire_hydrant,
            color: Colors.black,
          ),
          label: 'fire',
        ),
      ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              height: 350,
              width: 350,
              child: Image.network(
                  'https://www.onlygfx.com/wp-content/uploads/2015/12/leaf-2-1006x1024.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.heart_broken,
                  color: Colors.grey,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "unsayable",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Text(" Brambles")
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
