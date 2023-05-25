import 'package:flutter/material.dart';

import 'features/dashboard_screen/screens/dashboard_screen.dart';
import 'ui/themes/type_scale.dart';

class SculptorApp extends StatelessWidget {
  const SculptorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        textTheme: textTheme,
      ),
      debugShowCheckedModeBanner: false,
      home: const DashBoardScreen(),
    );
  }
}
