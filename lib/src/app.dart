import 'package:flutter/material.dart';
import 'package:sculptor/src/features/dashboard_screen/screens/dashboard_screen.dart';

class SculptorApp extends StatelessWidget {
  const SculptorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const DashBoardScreen(),
    );
  }
}
