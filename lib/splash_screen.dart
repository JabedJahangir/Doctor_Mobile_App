import 'package:doctor_mobile_app/Urls/image_assets.dart';
import 'package:doctor_mobile_app/Widgets/button_widget.dart';
import 'package:doctor_mobile_app/log_in_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 21, right: 22, top: 20),
      child: Column(
        spacing: 15,
        children: [
          Image.asset(AppImages.splashImage),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Experience seamless healthcare\naccess at your fingertips - book\nappointments, see top doctors,\nand prioritize your well-being with\nour revolutionary app!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF677294)),
              ),
            ),
          ),
          ButtonWidget(
            buttonText: 'Get Started',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LogInPage()));
            },
          )
        ],
      ),
    ));
  }
}
