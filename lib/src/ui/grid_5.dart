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
        padding: EdgeInsets.all(16),
        itemCount: (data.length + grid - 1) ~/ grid,
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
                    color: Colors.pink,
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
                          color: Colors.pink,
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
                          color: Colors.pink,
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
                        margin: EdgeInsets.only(bottom: 12, right: 12),
                        height: 120,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink,
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
                        margin: const EdgeInsets.only(bottom: 12, right: 12),
                        height: 120,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink,
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
            ],
          );
        },
      ),
    );
  }
}
