import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

import '../core/extensions/context_extension.dart';

class GlassMorphicBackground extends StatelessWidget {
  const GlassMorphicBackground({
    Key? key,
    this.child,
    this.height,
    this.width,
    this.blur,
    this.color,
    this.borderRadius,
  }) : super(key: key);

  final Widget? child;
  final double? height;
  final double? width;
  final double? blur;
  final Color? color;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      height: height ?? context.mediaQuery.size.height,
      width: width ?? context.mediaQuery.size.width,
      blur: blur ?? 4,
      color: color ?? Colors.white.withOpacity(0.1),
      shadowColor: Colors.black38,
      borderRadius: borderRadius ?? BorderRadius.zero,
      border: null,
      child: child,
    );
  }
}
