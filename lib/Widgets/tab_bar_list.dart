import 'package:doctor_mobile_app/Colors/colors.dart';
import 'package:flutter/material.dart';

class TabBarList extends StatefulWidget {
  const TabBarList({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  State<TabBarList> createState() => _TabBarListState();
}

class _TabBarListState extends State<TabBarList> {
  int selectedTab = 0;
  int selectedText = 0;

  final List<String> tabName = const [
    'All',
    'Dentist',
    'Cardiology',
    'physio Therapy'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tabName.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(0),
                  backgroundColor: WidgetStatePropertyAll(selectedTab == index
                      ? AppColors.buttonColor
                      : Color(0xFFECFAF5)),
                  foregroundColor: WidgetStatePropertyAll(selectedText == index
                      ? AppColors.themeColor
                      : AppColors.buttonColor),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    selectedTab = index;
                    selectedText = index;
                  });
                  widget.onPressed();
                },
                child: Text(
                  tabName[index],
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
            );
          }),
    );
  }
}
