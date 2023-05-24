import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:sculptor/src/core/extensions/context_extension.dart';

class NGOScreen extends StatelessWidget {
  const NGOScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Image.asset(
        "assets/images/blue_bg.jpg",
        height: context.screenHeight,
        width: context.screenWidth,
        fit: BoxFit.cover,
      ).blur(blur: 25),
    );
  }
}
