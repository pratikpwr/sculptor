import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

import '../../core/extensions/context_extension.dart';

class BackgroundItem extends StatelessWidget {
  const BackgroundItem({
    super.key,
    required this.body,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/shape_bg.jpg',
            fit: BoxFit.fitHeight,
            height: context.screenHeight,
            width: context.screenWidth,
          ).blur(blur: 2),
        ),
        body,
      ],
    );
  }
}
