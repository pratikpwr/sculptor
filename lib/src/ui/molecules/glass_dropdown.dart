import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../core/extensions/context_extension.dart';
import '../atoms/padding.dart';
import '../themes/colors.dart';
import 'glass_morphic_item.dart';

class GlassDropDown<T> extends StatelessWidget {
  const GlassDropDown({
    super.key,
    this.value,
    required this.items,
    required this.onChanged,
    required this.hint,
    this.labelText,
    this.itemToString,
  });

  final String? labelText;
  final String hint;
  final List<T> items;
  final T? value;
  final Function(T?) onChanged;
  final String Function(T)? itemToString;

  String getItemTitle(T item) =>
      itemToString != null ? itemToString!(item) : item.toString();

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
          enableBorder: true,
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<T>(
              hint: Text(
                hint,
                style: context.textTheme.bodySmall?.copyWith(
                  color: AppColors.secondaryText,
                ),
              ),
              value: value,
              onChanged: onChanged,
              items: items
                  .map((T item) => DropdownMenuItem<T>(
                        value: item,
                        child: Text(
                          getItemTitle(item),
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: AppColors.primaryText,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ))
                  .toList(),
              icon: const Icon(Icons.keyboard_arrow_down_rounded),
              iconSize: 28,
              isExpanded: true,
              buttonPadding: const EdgeInsets.only(right: 8),
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white.withOpacity(0.8),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
                backgroundBlendMode: BlendMode.hardLight,
              ),
              dropdownElevation: 0,
              dropdownMaxHeight: 200,
            ),
          ),
        ),
      ],
    );
  }
}
