import 'package:flutter/material.dart';

class EmailBox extends StatelessWidget {
  const EmailBox({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        width: 0.3,
        color: Color(0xff67729429),
      ),
    );
    return Container(
      width: 251,
      height: 47,
      decoration: BoxDecoration(),
      child: TextField(
        decoration:
            InputDecoration(focusedBorder: border, enabledBorder: border),
      ),
    );
  }
}
