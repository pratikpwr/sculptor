import 'package:flutter/material.dart';

import 'glass_morphic_item.dart';

class DismissibleBackground extends StatelessWidget {
  const DismissibleBackground({
    super.key,
    this.bottomPadding = 12,
  });

  final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: GlassMorphicItem(
        padding: const EdgeInsets.only(right: 16),
        borderRadius: BorderRadius.circular(12),
        blur: 10,
        color: Colors.red.shade800,
        opacity: 0.7,
        child: const Align(
          alignment: Alignment.centerRight,
          child: Icon(
            Icons.delete,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
