import 'package:doctor_mobile_app/Colors/colors.dart';
import 'package:doctor_mobile_app/Urls/image_assets.dart';
import 'package:doctor_mobile_app/Widgets/account.dart';
import 'package:doctor_mobile_app/Widgets/button_widget.dart';
import 'package:doctor_mobile_app/Widgets/email_box.dart';
import 'package:doctor_mobile_app/Widgets/password_box.dart';
import 'package:doctor_mobile_app/doctors.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome Back',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000)),
            ),
            const SizedBox(height: 12),
            Text(
              'Take control of your health with \nour app - book appointments with\nease and get the care \nyou deserve',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF677294)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Account(
                    accountName: 'Google',
                    onPressed: () {},
                    accountImage: AppImages.google),
                const SizedBox(
                  width: 12,
                ),
                Account(
                    accountName: 'Facebook',
                    onPressed: () {},
                    accountImage: AppImages.facebook),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            EmailBox(),
            const SizedBox(
              height: 12,
            ),
            PasswordBox(),
            const SizedBox(
              height: 30,
            ),
            ButtonWidget(
                buttonText: 'Login',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Doctors()),
                  );
                }),
            const SizedBox(height: 30),
            Text(
              'Forgot Password',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.buttonColor),
            ),
          ],
        ),
      ),
    );
  }
}
