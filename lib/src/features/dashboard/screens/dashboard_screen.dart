import 'package:flutter/material.dart';

import '../../../core/constants/assets.dart';
import '../../../core/extensions/context_extension.dart';
import '../../events/screens/events_screen.dart';
import '../../ngo/screens/ngo_screen.dart';
import '../../volunteer/screens/volunteer_screen.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/drawer_widget.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int _selectedIndex = 0;

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  static final List<Widget> _widgetOptions = <Widget>[
    NGOScreen(),
    EventsScreen(),
    VolunteerScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/shape_bg.jpg',
              fit: BoxFit.fitHeight,
              height: context.screenHeight,
              width: context.screenWidth,
            ),
          ),
          _widgetOptions[_selectedIndex],
          _bottomBar(),
        ],
      ),
      endDrawer: const DrawerWidget(),
      drawerScrimColor: Colors.transparent,
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
            title: 'NGOs',
            icon: Assets.ngoFilled,
            unSelectedIcon: Assets.ngoUnfilled,
          ),
          BottomNavBarItem(
            title: 'Events',
            icon: Assets.eventFilled,
            unSelectedIcon: Assets.eventUnfilled,
          ),
          BottomNavBarItem(
            title: 'Volunteer',
            icon: Assets.volunteerFilled,
            unSelectedIcon: Assets.volunteerUnfilled,
          ),
          BottomNavBarItem(
            title: 'Menu',
            icon: Assets.menu,
            unSelectedIcon: Assets.menu,
          ),
        ],
        selectedIndex: _selectedIndex,
        onTap: (index) {
          if (index == 3) {
            // open drawer
            _key.currentState!.openEndDrawer();
          } else {
            setState(() {
              _selectedIndex = index;
            });
          }
        },
      ),
    );
  }
}

//https://img.freepik.com/premium-photo/3d-colorful-sphere-ball-background-abstract-3d-background_518421-166.jpg

// https://img.freepik.com/free-photo/peach-petal-texture-background-blog-banner_53876-119884.jpg

// https://static.vecteezy.com/system/resources/previews/008/289/330/original/abstract-colorful-background-pink-peach-blue-pastel-skin-light-kids-color-gradiant-illustration-pink-peach-blue-color-gradiant-background-free-vector.jpg
