import 'package:flutter/material.dart';

class Grid4 extends StatefulWidget {
  const Grid4({Key? key}) : super(key: key);

  @override
  State<Grid4> createState() => _Grid4State();
}

class _Grid4State extends State<Grid4> {
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
    "10",
  ];

  int grid = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: (data.length + grid - 1) ~/ grid,
        itemBuilder: (context, index) {
          return Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 7, right: 7),
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
                    ),
                    child: Center(
                      child: Text(
                        data[index * grid],
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: index * grid + 1 >= data.length
                      ? Container()
                      : Container(
                          height: 120,
                          margin: const EdgeInsets.only(bottom: 7, right: 7),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueAccent,
                          ),
                          child: Center(
                            child: Text(
                              data[index * grid + 1],
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                ),
                Expanded(
                  child: index * grid + 2 >= data.length
                      ? Container()
                      : Container(
                          height: 120,
                          margin: const EdgeInsets.only(bottom: 7, right: 7),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueAccent,
                          ),
                          child: Center(
                            child: Text(
                              data[index * grid + 2],
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                ),
                Expanded(
                  child: index * grid + 3 >= data.length
                      ? Container()
                      : Container(
                          height: 120,
                          margin: const EdgeInsets.only(bottom: 7),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueAccent,
                          ),
                          child: Center(
                            child: Text(
                              data[index * grid + 3],
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
