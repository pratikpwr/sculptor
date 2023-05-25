import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

class GlassMorphicItem extends StatelessWidget {
  const GlassMorphicItem({
    super.key,
    required this.child,
    this.height,
    this.width,
    this.color,
    this.blur = 10,
    this.enableShadow = true,
    this.shadowColor,
    this.borderRadius = BorderRadius.zero,
    this.padding = const EdgeInsets.all(0),
  });

  final Widget child;
  final double? height;
  final double? width;
  final double blur;
  final Color? color;
  final Color? shadowColor;
  final bool enableShadow;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      height: height,
      width: width,
      blur: blur,
      color: color ?? Colors.white.withOpacity(0.5),
      shadowColor:
          enableShadow ? shadowColor ?? Colors.black26 : Colors.transparent,
      borderRadius: borderRadius,
      border: Border.all(color: Colors.transparent, width: 0),
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}
