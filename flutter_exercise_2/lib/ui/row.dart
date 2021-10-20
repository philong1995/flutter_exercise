import 'package:flutter/material.dart';

class RowUI extends StatelessWidget {
  const RowUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        color: Colors.blue[200],
        width: MediaQuery.of(context).size.width * 0.25,
      ),
    );
  }
}
