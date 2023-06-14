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
  });

  final Widget child;
  final double? height;
  final double? width;
  final double blur;
  final double opacity;
  final bool enableShadow;
  final bool enableBorder;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    // return ClipRRect(
    //   borderRadius: borderRadius,
    //   child: BackdropFilter(
    //     filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
    //     child: Container(
    //       padding: padding,
    //       decoration: BoxDecoration(
    //           color: Colors.white.withOpacity(opacity),
    //           borderRadius: borderRadius,
    //           border: enableBorder
    //               ? Border.all(
    //                   color: Colors.white.withOpacity(0.2),
    //                   width: 1.5,
    //                 )
    //               : null,
    //           boxShadow: [
    //             // if (enableShadow)
    //             //   BoxShadow(
    //             //     blurRadius: blur,
    //             //     spreadRadius: blur / 2,
    //             //     color: const Color(0x3D333333),
    //             //   ),
    //           ]),
    //       child: child,
    //     ),
    //   ),
    // );

    return GlassContainer(
      height: height,
      width: width,
      blur: blur,
      color: Colors.white.withOpacity(opacity),
      shadowColor: enableShadow ? const Color(0x3D333333) : Colors.transparent,
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
