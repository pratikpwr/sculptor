import 'package:flutter/material.dart';
import 'package:sculptor/src/ui/themes/colors.dart';

import '../../core/extensions/context_extension.dart';
import 'glass_morphic_item.dart';

class SliverHeaderItem extends StatelessWidget {
  const SliverHeaderItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
      sliver: SliverAppBar(
        title: GlassMorphicItem(
          blur: 15,
          enableShadow: false,
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
          borderRadius: BorderRadius.circular(8),
          enableBorder: true,
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              HeaderItemTile(
                title: 'List',
                isSelected: true,
              ),
              HeaderItemTile(
                title: 'Map',
                isSelected: false,
              ),
            ],
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
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        title,
        style: isSelected
            ? context.textTheme.labelMedium?.copyWith(color: AppColors.accentColor)
            : context.textTheme.labelMedium,
      ),
    );
  }
}
