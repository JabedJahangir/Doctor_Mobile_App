import 'package:doctor_mobile_app/Colors/colors.dart';
import 'package:flutter/material.dart';

class ServiceInfo extends StatelessWidget {
  const ServiceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              '1',
              style: TextStyle(fontSize: 14, color: AppColors.buttonColor),
            ),
            Text(
              '    Patient care should be the number one priority.',
              style: TextStyle(fontSize: 14, color: Color(0xFF333333)),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              '2',
              style: TextStyle(fontSize: 14, color: AppColors.buttonColor),
            ),
            Text(
              '    If you run your practice you know how frustrating..',
              style: TextStyle(fontSize: 14, color: Color(0xFF333333)),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              '3',
              style: TextStyle(fontSize: 14, color: AppColors.buttonColor),
            ),
            Text(
              '    That’s why some of appointment reminder system.',
              style: TextStyle(fontSize: 14, color: Color(0xFF333333)),
            ),
          ],
        ),
      ],
    );
  }
}
