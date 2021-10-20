import 'package:flutter/material.dart';

class ColumnUI extends StatelessWidget {
  const ColumnUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        color: Colors.blue[300],
        height: MediaQuery.of(context).size.height * 0.2,
      ),
    );
  }
}
