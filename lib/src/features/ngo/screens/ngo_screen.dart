import 'package:flutter/material.dart';

import '../../../widgets/atoms/padding.dart';
import '../../../widgets/molecules/app_bar_item.dart';

class NGOScreen extends StatelessWidget {
  const NGOScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Column(
          children: [
            AppBarItem(
              title: 'NGO',
              icon: Icons.menu,
              onTapIcon: () {},
            ),
            padding12,
            
          ],
        ),
      ),
    );
  }
}
