import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/extensions/context_extension.dart';
import '../molecules/glass_morphic_item.dart';
import '../themes/colors.dart';
import 'padding.dart';

class GlassTextField extends StatelessWidget {
  const GlassTextField({
    super.key,
    this.controller,
    this.hintText,
    this.labelText,
    this.keyboardType,
    this.onChanged,
    this.onEditingComplete,
    this.inputFormatters,
    this.maxLines,
    this.prefixIcon,
  });

  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final Function()? onEditingComplete;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null) ...[
          Text(labelText!, style: context.textTheme.labelLarge),
          padding8,
        ],
        GlassMorphicItem(
          blur: 8,
          opacity: 0.3,
          borderRadius: BorderRadius.circular(8),
          padding: EdgeInsets.symmetric(vertical: maxLines != null ? 4 : 0),
          enableBorder: true,
          child: TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            onChanged: onChanged,
            onEditingComplete: onEditingComplete,
            inputFormatters: inputFormatters,
            maxLines: maxLines,
            style: context.textTheme.bodyMedium?.copyWith(
              color: AppColors.primaryText,
            ),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: context.textTheme.bodySmall?.copyWith(
                color: AppColors.secondaryText,
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              prefixIcon: prefixIcon,
            ),
          ),
        ),
      ],
    );
  }
}
