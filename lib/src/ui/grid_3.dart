import 'package:flutter/material.dart';

class Grid3 extends StatefulWidget {
  const Grid3({Key? key}) : super(key: key);

  @override
  State<Grid3> createState() => _Grid3State();
}

class _Grid3State extends State<Grid3> {
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
  int grid = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: (data.length + grid - 1) ~/ grid,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 120,
                  margin: const EdgeInsets.only(bottom: 7),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
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
              const SizedBox(width: 7),
              Expanded(
                child: index * grid + 1 >= data.length
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
                          color: Colors.green,
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
              const SizedBox(width: 7),
              Expanded(
                child: index * grid + 2 >= data.length
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
                          color: Colors.green,
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
            ],
          );
        },
      ),
    );
  }
}
