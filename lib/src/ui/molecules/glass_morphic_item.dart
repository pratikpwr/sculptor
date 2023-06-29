import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

class GlassMorphicItem extends StatelessWidget {
  const GlassMorphicItem({
    super.key,
    required this.child,
    this.height,
    this.width,
    this.blur = 10,
    this.opacity = 0.5,
    this.enableShadow = true,
    this.enableBorder = false,
    this.borderRadius = BorderRadius.zero,
    this.padding = const EdgeInsets.all(0),
    this.color = Colors.white,
    this.shadowColor = const Color(0x3D333333),
  });

  final Widget child;
  final double? height;
  final double? width;
  final double blur;
  final double opacity;
  final bool enableShadow;
  final Color shadowColor;
  final bool enableBorder;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      height: height,
      width: width,
      blur: blur,
      color: color.withOpacity(opacity),
      shadowColor: enableShadow ? shadowColor : Colors.transparent,
      borderRadius: borderRadius,
      border: enableBorder
          ? Border.all(
              color: Colors.white.withOpacity(0.3),
              width: 1.5,
            )
          : Border.all(
              color: Colors.transparent,
              width: 1.5,
            ),
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}
