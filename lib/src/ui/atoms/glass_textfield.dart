import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sculptor/src/ui/themes/colors.dart';

import '../../core/extensions/context_extension.dart';
import 'padding.dart';
import '../molecules/glass_morphic_item.dart';

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
  });

  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final Function()? onEditingComplete;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;

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
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: context.textTheme.bodySmall?.copyWith(
                color: AppColors.secondaryText,
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            ),
          ),
        ),
      ],
    );
  }
}