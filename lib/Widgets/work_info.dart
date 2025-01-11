import 'package:doctor_mobile_app/Colors/colors.dart';
import 'package:flutter/material.dart';

class WorkInfo extends StatelessWidget {
  const WorkInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 252,
      width: 115,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.themeColor,
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                blurRadius: 3,
                spreadRadius: 1,
                offset: Offset(0, -1))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 64,
            width: 90,
            decoration: BoxDecoration(
                color: Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '100',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Running',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF677294),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 64,
            width: 90,
            decoration: BoxDecoration(
                color: Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '700',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Patients',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF677294),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 64,
            width: 90,
            decoration: BoxDecoration(
                color: Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '500',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Ongoing',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF677294),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
