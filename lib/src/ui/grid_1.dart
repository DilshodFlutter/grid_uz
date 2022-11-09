import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Grid1 extends StatefulWidget {
  const Grid1({Key? key}) : super(key: key);

  @override
  State<Grid1> createState() => _Grid1State();
}

class _Grid1State extends State<Grid1> {
  List<String> data = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
  ];

  @override
  Widget build(BuildContext context) {
    int grid = 1;

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
              height: 120,
              margin: const EdgeInsets.only(
                bottom: 12,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: Colors.orange,
              ),
              child: Center(
                child: Text(
                  data[index],
                ),
              ),
            );
          }),
    );
  }
}
