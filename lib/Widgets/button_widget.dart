import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const ButtonWidget({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46.89,
      width: 220.73,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(buttonText),
      ),
    );
  }
}
