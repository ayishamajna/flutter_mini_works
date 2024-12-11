import 'package:flutter/material.dart';

class MyContainers extends StatefulWidget {
  const MyContainers({super.key});

  @override
  State<MyContainers> createState() => _MyContainersState();
}

class _MyContainersState extends State<MyContainers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 80,
                width: 200,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 80,
                width: 100,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 80,
                width: 100,
                color: Colors.white,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 80,
                    width: 100,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 80,
                    width: 100,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 180,
                  width: 320,
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 100,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 80,
                width: 95,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 80,
                width: 95,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 80,
                width: 91,
                color: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}
