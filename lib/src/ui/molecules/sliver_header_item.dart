import 'package:flutter/material.dart';

import '../../core/extensions/context_extension.dart';
import '../themes/colors.dart';
import 'glass_morphic_item.dart';

class SliverHeaderItem extends StatelessWidget {
  const SliverHeaderItem({
    super.key,
    required this.currentIndex,
    required this.onChanged,
    required this.items,
  });

  final int currentIndex;

  final Function(int) onChanged;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
      sliver: SliverAppBar(
        title: GlassMorphicItem(
          blur: 15,
          enableShadow: false,
          padding: const EdgeInsets.all(4),
          borderRadius: BorderRadius.circular(8),
          enableBorder: true,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              items.length,
              (index) => GestureDetector(
                onTap: () => onChanged(index),
                child: HeaderItemTile(
                  title: items[index],
                  isSelected: currentIndex == index,
                ),
              ),
            ),
          ),
        ),
        pinned: false,
        snap: false,
        floating: true,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        shadowColor: Colors.transparent,
      ),
    );
  }
}

class HeaderItemTile extends StatelessWidget {
  final String title;
  final bool isSelected;

  const HeaderItemTile({
    Key? key,
    required this.title,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ]
            : null,
      ),
      child: Text(
        title,
        style: isSelected
            ? context.textTheme.labelMedium
                ?.copyWith(color: AppColors.accentColor)
            : context.textTheme.labelMedium,
      ),
    );
  }
}
