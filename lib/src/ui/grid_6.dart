import 'package:flutter/material.dart';

class Grid6 extends StatefulWidget {
  const Grid6({Key? key}) : super(key: key);

  @override
  State<Grid6> createState() => _Grid6State();
}

class _Grid6State extends State<Grid6> {
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

  int grid = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: (data.length * grid - 1) ~/ grid,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 12, right: 12),
                  height: 120,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown,
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
                        margin: EdgeInsets.only(bottom: 12, right: 12),
                        height: 120,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.brown,
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
                        margin: EdgeInsets.only(bottom: 12, right: 12),
                        height: 120,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.brown,
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
                        margin: const EdgeInsets.only(bottom: 12, right: 12),
                        height: 120,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.brown,
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
              ),
              Expanded(
                child: index * grid + 4 >= data.length
                    ? Container()
                    : Container(
                        margin: EdgeInsets.only(bottom: 12, right: 12),
                        height: 120,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.brown,
                        ),
                        child: Center(
                          child: Text(
                            data[index * grid + 4],
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
              ),
              Expanded(
                child: index * grid + 6 >= data.length
                    ? Container()
                    : Container(
                        margin: const EdgeInsets.only(bottom: 12, right: 12),
                        height: 120,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.brown,
                        ),
                        child: Center(
                          child: Text(
                            data[index * grid + 5],
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
