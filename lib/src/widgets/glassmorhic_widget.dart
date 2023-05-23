import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:sculptor/src/core/extensions/context_extension.dart';

// gradient background screen
class GlassMorphicBackground extends StatelessWidget {
  const GlassMorphicBackground({
    Key? key,
    this.child,
    this.height,
    this.width,
    this.blur,
  }) : super(key: key);

  final Widget? child;
  final double? height;
  final double? width;
  final double? blur;

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      height: height ?? context.mediaQuery.size.height,
      width: width ?? context.mediaQuery.size.width,
      blur: blur ?? 4,
      color: Colors.white.withOpacity(0.1),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.white.withOpacity(0.2),
          Colors.blue.withOpacity(0.3),
        ],
      ),
      borderRadius: BorderRadius.zero,
      child: Container(
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //     colors: [
        //       Colors.white,
        //       Colors.white,
        //       Color(0xFFc7e2ff),
        //       Color(0xFFc7e2ff),
        //       Color(0xFF75b5fa),
        //       Color(0xFF75b5fa),
        //     ],
        //   ),
        // ),
        child: child,
      ),
    );
  }
}
