import 'package:flutter/material.dart';
import 'package:flutter_works/myContainers.dart';
import 'package:flutter_works/widgets/BlackContainer.dart';

class MediaContainer extends StatefulWidget {
  const MediaContainer({super.key});

  @override
  State<MediaContainer> createState() => _MediaContainerState();
}

class _MediaContainerState extends State<MediaContainer> {
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    double screenSize =
        MediaQuery.of(context).size.width < MediaQuery.of(context).size.height
            ? MediaQuery.of(context).size.width
            : MediaQuery.of(context).size.height;
    return const Scaffold(
        body: Center(
            child: Column(
      children: [
        Blackcontainer(),
        SizedBox(
          height: 10,
        ),
        Blackcontainer()
      ],
    )));
  }
}
