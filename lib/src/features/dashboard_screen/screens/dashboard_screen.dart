import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:sculptor/src/core/constants/assets.dart';
import 'package:sculptor/src/features/events/screens/events_screen.dart';
import 'package:sculptor/src/features/ngo/screens/ngo_screen.dart';
import 'package:sculptor/src/features/volunteer/screens/volunteer_screen.dart';

import '../widgets/bottom_nav_bar.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int _selectedIndex = 1;

  static const List<Widget> _widgetOptions = <Widget>[
    EventsScreen(),
    NGOScreen(),
    VolunteerScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.background,
              fit: BoxFit.fitHeight,
            ).blur(blur: 25),
          ),
          _widgetOptions[_selectedIndex],
          _bottomBar(),
        ],
      ),
    );
  }

  Widget _bottomBar() {
    return Positioned(
      bottom: 12,
      left: 12,
      right: 12,
      child: BottomNavBar(
        items: [
          BottomNavBarItem(
            title: 'Events',
            icon: Assets.eventFilled,
            unSelectedIcon: Assets.eventUnfilled,
          ),
          BottomNavBarItem(
            title: 'NGOs',
            icon: Assets.ngoFilled,
            unSelectedIcon: Assets.ngoUnfilled,
          ),
          BottomNavBarItem(
            title: 'Volunteer',
            icon: Assets.volunteerFilled,
            unSelectedIcon: Assets.volunteerUnfilled,
          ),

        ],
        selectedIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
