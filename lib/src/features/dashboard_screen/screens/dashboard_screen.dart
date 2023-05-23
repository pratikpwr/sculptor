import 'package:flutter/material.dart';
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
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      // bottomNavigationBar: BottomNavBar(
      //   items: [
      //     BottomNavBarItem(
      //       title: 'Events',
      //       icon: Icons.event,
      //     ),
      //     BottomNavBarItem(
      //       title: 'NGOs',
      //       icon: Icons.business,
      //     ),
      //     BottomNavBarItem(
      //       title: 'volunteer',
      //       icon: Icons.people,
      //     ),
      //   ],
      //   selectedIndex: _selectedIndex,
      //   onTap: (index) {
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //   },
      // ),
    );
  }
}
