import 'package:doctor_mobile_app/Colors/colors.dart';
import 'package:doctor_mobile_app/Urls/image_assets.dart';
import 'package:flutter/material.dart';

class NavigationBarItem extends StatefulWidget {
  const NavigationBarItem({super.key});

  @override
  State<NavigationBarItem> createState() => _NavigationBarItemState();
}

class _NavigationBarItemState extends State<NavigationBarItem> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 1, offset: Offset(0, -1))
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _navigateBottomBar,
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.themeColor,
            items: [
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: CircleAvatar(
                      radius: 23,
                      backgroundColor: _selectedIndex == 0
                          ? AppColors.buttonColor
                          : Colors.white,
                      child: SizedBox(
                          height: 20,
                          width: 22,
                          child: Image.asset(AppImages.vectorIcon,
                              color: _selectedIndex == 0
                                  ? Colors.white
                                  : Color(0xFF858EA9))),
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: CircleAvatar(
                      radius: 23,
                      backgroundColor: _selectedIndex == 1
                          ? AppColors.buttonColor
                          : Colors.white,
                      child: SizedBox(
                        height: 20,
                        width: 22,
                        child: Image.asset(
                          AppImages.loveIcon,
                          color: _selectedIndex == 1
                              ? Colors.white
                              : Color(0xFF858EA9),
                        ),
                      ),
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: CircleAvatar(
                      radius: 23,
                      backgroundColor: _selectedIndex == 2
                          ? AppColors.buttonColor
                          : Colors.white,
                      child: SizedBox(
                          height: 20,
                          width: 22,
                          child: Image.asset(
                            AppImages.bookIcon,
                            color: _selectedIndex == 2
                                ? Colors.white
                                : Color(0xFF858EA9),
                          )),
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: CircleAvatar(
                      radius: 23,
                      backgroundColor: _selectedIndex == 3
                          ? AppColors.buttonColor
                          : Colors.white,
                      child: SizedBox(
                          height: 20,
                          width: 22,
                          child: Image.asset(
                            AppImages.meassageIcon,
                            color: _selectedIndex == 3
                                ? Colors.white
                                : Color(0xFF858EA9),
                          )),
                    ),
                  ),
                  label: ''),
            ]),
      ),
    );
  }
}
