import 'package:flutter/material.dart';

class Grid5 extends StatefulWidget {
  const Grid5({Key? key}) : super(key: key);

  @override
  State<Grid5> createState() => _Grid5State();
}

class _Grid5State extends State<Grid5> {
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

  int grid = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: (data.length + grid - 1) ~/ grid,
        itemBuilder: (context, index) {
          return Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 120,
                    child: Center(
                      child: Text(
                        data[index * grid],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
