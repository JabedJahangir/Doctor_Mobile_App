import 'package:flutter/material.dart';

class FeaturedDoctorSyntax extends StatelessWidget {
  const FeaturedDoctorSyntax({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Featured Doctors',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          'See all',
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(103, 114, 148, 1)),
        )
      ],
    );
  }
}
