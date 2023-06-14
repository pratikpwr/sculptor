import 'package:flutter/material.dart';

class IconItem extends StatelessWidget {
  const IconItem({
    super.key,
    required this.path,
    required this.size,
    this.color,
  });

  final String path;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      height: size,
      width: size,
      color: color,
    );
  }
}
