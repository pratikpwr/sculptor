import 'package:flutter/material.dart';

import '../../core/extensions/context_extension.dart';
import '../molecules/glass_morphic_item.dart';
import '../themes/colors.dart';

class GlassButton extends StatelessWidget {
  const GlassButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GlassMorphicItem(
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Text(
            text.toUpperCase(),
            textAlign: TextAlign.center,
            style: context.textTheme.labelLarge?.copyWith(
              color: AppColors.accentColor,
            ),
          ),
        ),
      ),
    );
  }
}
