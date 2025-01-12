import 'package:flutter/material.dart';

class EmailBox extends StatefulWidget {
  const EmailBox({super.key});

  @override
  State<EmailBox> createState() => _EmailBoxState();
}

class _EmailBoxState extends State<EmailBox> {
  final TextEditingController _controller = TextEditingController();
  bool _isTextEntered = false;
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _isTextEntered = _controller.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
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
    return SizedBox(
      width: 251,
      height: 47,
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: 'Enter Your Email',
          hintStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Color(0xFF677294)),
          suffixIcon: _isTextEntered
              ? IconButton(
                  onPressed: () {
                    _controller.clear();
                    setState(() {
                      _isTextEntered = false;
                    });
                  },
                  icon: Icon(Icons.clear),
                )
              : null,
          focusedBorder: border,
          enabledBorder: border,
        ),
      ),
    );
  }
}
