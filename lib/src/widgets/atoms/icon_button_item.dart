import 'package:flutter/material.dart';

import '../glass_morphic_widget.dart';

class IconButtonItem extends StatelessWidget {
  const IconButtonItem({
    super.key,
    required this.icon,
    required this.onTap,
    this.size = 24,
    this.color = Colors.indigoAccent,
  });

  final IconData icon;
  final VoidCallback onTap;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GlassMorphicBackground(
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(
            icon,
            size: size,
            color: color,
          ),
        ),
      ),
    );
  }
}
