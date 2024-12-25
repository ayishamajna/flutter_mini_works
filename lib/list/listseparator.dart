import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ListSeparator extends StatefulWidget {
  const ListSeparator({super.key});

  @override
  State<ListSeparator> createState() => _ListSeparatorState();
}

class _ListSeparatorState extends State<ListSeparator> {
  final List<String> items = List.generate(15, (index) => "items ${index + 1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: items.length),
    );
  }
}
