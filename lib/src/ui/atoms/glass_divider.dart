import 'package:flutter/material.dart';

import '../molecules/glass_morphic_item.dart';

class GlassDivider extends StatelessWidget {
  const GlassDivider({
    super.key,
    this.height = 1,
    this.width = double.infinity,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GlassMorphicItem(
      height: height,
      width: width,
      child: const SizedBox.shrink(),
    );
  }
}

// vertical glass divider
class VerticalGlassDivider extends StatelessWidget {
  const VerticalGlassDivider({
    super.key,
    this.width = 1,
    this.height = double.infinity,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GlassMorphicItem(
      width: width,
      height: height,
      child: const SizedBox.shrink(),
    );
  }
}
