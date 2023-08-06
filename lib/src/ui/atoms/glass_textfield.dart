import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/extensions/context_extension.dart';
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
    this.suffixIcon,
    this.textAlignVertical,
    this.enabled = true,
    this.validator,
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
  final Widget? suffixIcon;
  final TextAlignVertical? textAlignVertical;
  final bool enabled;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {

    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: Colors.white.withOpacity(0.5),
        width: 1.5,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null) ...[
          Text(labelText!, style: context.textTheme.labelLarge),
          padding8,
        ],
        TextFormField(
          enabled: enabled,
          controller: controller,
          keyboardType: keyboardType,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          inputFormatters: inputFormatters,
          maxLines: maxLines,
          style: context.textTheme.bodyMedium?.copyWith(
            color: AppColors.primaryText,
          ),
          textAlignVertical: textAlignVertical,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: context.textTheme.bodySmall?.copyWith(
              color: AppColors.secondaryText,
            ),
            border: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
          ),
          validator: validator,
          onTapOutside: (_) => FocusScope.of(context).unfocus(),
        ),
      ],
    );
  }
}
