import 'package:flutter/material.dart';

class Grid6 extends StatefulWidget {
  const Grid6({Key? key}) : super(key: key);

  @override
  State<Grid6> createState() => _Grid6State();
}

class _Grid6State extends State<Grid6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 0,
        itemBuilder: (context, index) {
          return Container();
        },
      ),
    );
  }
}
