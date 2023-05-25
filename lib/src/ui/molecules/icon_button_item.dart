import 'package:flutter/material.dart';

import '../atoms/icon_item.dart';
import 'glass_morphic_item.dart';

class IconButtonItem extends StatelessWidget {
  const IconButtonItem({
    super.key,
    required this.icon,
    required this.onTap,
    this.size = 24,
    this.color,
  });

  final String icon;
  final VoidCallback? onTap;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GlassMorphicItem(
      borderRadius: BorderRadius.circular(12),
      enableShadow: false,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: IconItem(
            path: icon,
            size: size,
            color: color,
          ),
        ),
      ),
    );
  }
}
