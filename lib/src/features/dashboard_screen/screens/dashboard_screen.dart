import 'package:flutter/material.dart';
import 'package:sculptor/src/core/constants/assets.dart';
import 'package:sculptor/src/core/extensions/context_extension.dart';
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
              'assets/images/peach_bg.jpg',
              fit: BoxFit.fitHeight,
              height: context.screenHeight,
              width: context.screenWidth,
            ),
          ),
          _widgetOptions[_selectedIndex],
          // _bottomBar(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[],
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.blueGrey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _selectedIndex = 2;
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
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


//https://img.freepik.com/premium-photo/3d-colorful-sphere-ball-background-abstract-3d-background_518421-166.jpg

// https://img.freepik.com/free-photo/peach-petal-texture-background-blog-banner_53876-119884.jpg

// https://static.vecteezy.com/system/resources/previews/008/289/330/original/abstract-colorful-background-pink-peach-blue-pastel-skin-light-kids-color-gradiant-illustration-pink-peach-blue-color-gradiant-background-free-vector.jpg