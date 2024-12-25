import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListState();
}

class _MyListState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            // tileColor: Colors.grey[300],

            leading: Icon(Icons.abc_outlined),
            title: Text('welcome'),
            subtitle: Text('majna'),
            trailing: Icon(Icons.lock),
          ),
          Divider(),
          ListTile(
            // tileColor: Colors.grey[300],
            leading: Icon(Icons.abc_outlined),
            title: Text('welcome'),
            subtitle: Text('majna'),
            trailing: Icon(Icons.lock),
          ),
          Divider(),
          ListTile(
            // tileColor: Colors.grey[300],
            leading: Icon(Icons.abc_outlined),
            title: Text('welcome'),
            subtitle: Text('majna'),
            trailing: Icon(Icons.lock),
          )
        ],
      ),
    );
  }
}
