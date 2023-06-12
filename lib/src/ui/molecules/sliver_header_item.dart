import 'package:flutter/material.dart';
import 'package:sculptor/src/ui/atoms/padding.dart';
import 'package:sculptor/src/ui/molecules/glass_morphic_item.dart';

import '../../core/extensions/context_extension.dart';
import 'icon_button_item.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          borderRadius: BorderRadius.circular(12),
          color: Colors.white.withOpacity(0.5),
          enableBorder: true,
          child: Row(
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
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: isSelected
            ? context.textTheme.labelMedium?.copyWith(color: Colors.green)
            : context.textTheme.labelMedium,
      ),
    );
  }
}
