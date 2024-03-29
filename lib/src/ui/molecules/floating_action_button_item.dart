import 'package:flutter/material.dart';

import '../themes/colors.dart';
import 'glass_morphic_item.dart';

class FloatingActionButtonItem extends StatelessWidget {
  const FloatingActionButtonItem({
    super.key,
    required this.onTap,
    required this.icon,
  });

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 72.0, right: 12),
      child: InkWell(
        onTap: onTap,
        child: GlassMorphicItem(
          borderRadius: BorderRadius.circular(18),
          width: 56,
          height: 56,
          blur: 16,
          opacity: 0.7,
          enableShadow: true,
          color: Colors.white,
          shadowColor: Colors.white,
          child: Icon(
            icon,
            size: 32,
            color: AppColors.accentColor,
          ),
        ),
      ),
    );
  }
}
