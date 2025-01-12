import 'package:flutter/material.dart';

class PasswordBox extends StatefulWidget {
  const PasswordBox({super.key});

  @override
  State<PasswordBox> createState() => _PasswordBoxState();
}

class _PasswordBoxState extends State<PasswordBox> {
  final TextEditingController _passController = TextEditingController();

  bool _isVisible = false;
  bool _emptyPass = false;

  @override
  void initState() {
    super.initState();
    _passController.addListener(() {
      setState(() {
        _emptyPass = _passController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        width: 0.3,
        color: Color(0xff67729429),
      ),
    );
    return Container(
      width: 251,
      height: 47,
      decoration: BoxDecoration(),
      child: TextField(
        controller: _passController,
        obscureText: !_isVisible,
        decoration: InputDecoration(
            hintText: 'Enter Your Password',
            hintStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color(0xFF677294)),
            suffixIcon: _emptyPass
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _isVisible = !_isVisible;
                      });
                    },
                    icon: Icon(
                        _isVisible ? Icons.visibility : Icons.visibility_off))
                : null,
            focusedBorder: border,
            enabledBorder: border),
      ),
    );
  }
}
