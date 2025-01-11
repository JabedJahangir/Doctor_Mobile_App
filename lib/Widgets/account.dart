import 'package:doctor_mobile_app/Colors/colors.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({
    super.key,
    required this.accountName,
    required this.onPressed,
    required this.accountImage,
  });

  final String accountName;
  final VoidCallback onPressed;
  final String accountImage;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: AppColors.themeColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), side: BorderSide.none),
        side: BorderSide.none,
        elevation: 0.1,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            accountImage,
            width: 14,
            height: 16,
          ),
          const SizedBox(width: 8),
          Text(
            accountName,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF677294),
            ),
          ),
        ],
      ),
    );
  }
}
