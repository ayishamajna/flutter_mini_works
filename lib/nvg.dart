import 'package:flutter/material.dart';
import 'package:flutter_works/history.dart';
import 'package:flutter_works/homepage.dart';
import 'package:flutter_works/profile.dart';
import 'package:flutter_works/search.dart';

class Nvg extends StatefulWidget {
  const Nvg({super.key});

  @override
  State<Nvg> createState() => _NvgState();
}

class _NvgState extends State<Nvg> {
  int indexnum = 0;
  List tapwidgets = [
    const Homepage(),
    const Search(),
    const History(),
    const Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
                color: Colors.black,
              ),
              label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: 'Profile'),
        ],
        currentIndex: indexnum,
        onTap: (int index) {
          setState(() {
            indexnum = index;
          });
        },
      ),
      body: tapwidgets[indexnum],
    );
  }
}
