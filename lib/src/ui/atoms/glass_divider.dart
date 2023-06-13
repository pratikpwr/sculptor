import 'package:flutter/material.dart';

import '../molecules/glass_morphic_item.dart';

class GlassDivider extends StatelessWidget {
  const GlassDivider({
    super.key,
    this.height = 1,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return GlassMorphicItem(
      height: height,
      width: double.infinity,
      child: const SizedBox.shrink(),
    );
  }
}
