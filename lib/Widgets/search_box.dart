import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        width: 0,
        color: Color(0xff67729429),
      ),
    );
    return Container(
      height: 38,
      width: 267,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(102, 128, 128, 128),
            spreadRadius: 0,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 8),
          hintText: 'Search',
          prefixIcon: Icon(
            Icons.search,
            size: 20,
          ),
          border: InputBorder.none,
          focusedBorder: border,
          enabledBorder: border,
        ),
      ),
    );
  }
}
