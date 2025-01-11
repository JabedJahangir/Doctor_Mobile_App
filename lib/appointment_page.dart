import 'package:doctor_mobile_app/Widgets/button_widget.dart';
import 'package:doctor_mobile_app/Widgets/navigation_bar_item.dart';
import 'package:doctor_mobile_app/Widgets/service_info.dart';
import 'package:doctor_mobile_app/Widgets/work_info.dart';
import 'package:flutter/material.dart';

class AppointmentPage extends StatelessWidget {
  // Accept the entire DoctorDetails widget
  final Widget doctorInfo;

  const AppointmentPage({super.key, required this.doctorInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 35, right: 20, top: 65),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                doctorInfo,
                Align(alignment: Alignment.topCenter, child: WorkInfo())
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Services',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            ServiceInfo(),
            const SizedBox(
              height: 55,
            ),
            Center(
                child: ButtonWidget(
                    buttonText: 'Book Appointment', onPressed: () {})),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBarItem(),
    );
  }
}
