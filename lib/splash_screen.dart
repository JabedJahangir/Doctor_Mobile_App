import 'package:doctor_mobile_app/Urls/image_assets.dart';
import 'package:doctor_mobile_app/Widgets/button_widget.dart';
import 'package:doctor_mobile_app/log_in_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
                child: Image.asset(
              AppImages.splashImage,
              width: MediaQuery.of(context).size.width * 0.8,
            )),
            Expanded(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Experience seamless healthcare\naccess at your fingertips - book\nappointments, see top doctors,\nand prioritize your well-being with\nour revolutionary app!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF677294)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ButtonWidget(
                      buttonText: 'Get Started',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LogInPage()));
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
