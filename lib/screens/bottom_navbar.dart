import 'package:flutter/material.dart';
import 'package:task1/screens/homepage.dart';
import 'package:task1/utils/theme.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  final List<Widget> _pages = [
    MyHomePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              children: _pages
            ),
          ),
          Column(
            children: [
              Container(
                height: 4,
                width: 50,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              BottomNavigationBar(
                backgroundColor: Colors.white,
                selectedItemColor: AppColor.borderColor,
                unselectedItemColor: Colors.grey, // Set unselected label color to grey
                selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
                currentIndex: _currentIndex,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_filled,
                      color: _currentIndex == 0 ? AppColor.borderColor : AppColor.iconColor,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.menu_book_outlined,
                      color: _currentIndex == 1 ? AppColor.borderColor : AppColor.iconColor,
                    ),
                    label: 'Learn',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.interests_outlined,
                      color: _currentIndex == 2 ? AppColor.borderColor : AppColor.iconColor,
                    ),
                    label: 'Hub',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.chat_bubble_outline_rounded,
                      color: _currentIndex == 3 ? AppColor.borderColor : AppColor.iconColor,
                    ),
                    label: 'Chat',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person_2_rounded,
                      color: _currentIndex == 4 ? AppColor.borderColor : AppColor.iconColor,
                    ),
                    label: 'Profile',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


