import 'package:flutter/material.dart';

import '../../../ui/atoms/icon_item.dart';
import '../../../ui/molecules/glass_morphic_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.items,
    required this.onTap,
    required this.selectedIndex,
  });

  final List<BottomNavBarItem> items;
  final Function(int) onTap;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return GlassMorphicItem(
      height: 64,
      blur: 8,
      borderRadius: BorderRadius.circular(30),
      enableShadow: false,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            items.length,
            (index) => GestureDetector(
              onTap: () => onTap(index),
              child: _BottomNavBarItemWidget(
                item: items[index],
                isSelected: selectedIndex == index,
              ),
            ),
          ),
        ),
      ),
    );
  }
// Color(0xffc7e0fe).withOpacity(0.1)
}

class BottomNavBarItem {
  BottomNavBarItem({
    required this.icon,
    required this.title,
    this.unSelectedIcon,
  });

  final String icon;
  final String title;
  final String? unSelectedIcon;
}

class _BottomNavBarItemWidget extends StatelessWidget {
  const _BottomNavBarItemWidget({
    required this.item,
    required this.isSelected,
  });

  final BottomNavBarItem item;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconItem(
            path: isSelected ? item.icon : item.unSelectedIcon ?? item.icon,
            size: 28,
            color: isSelected ? null : Colors.blueGrey,
          ),
          // padding4,
          // Text(
          //   item.title,
          //   style: GoogleFonts.poppins(
          //     fontSize: 12,
          //     color: isSelected ? Theme.of(context).primaryColor : Colors.grey,
          //     fontWeight: FontWeight.w500,
          //   ),
          // ),
        ],
      ),
    );
  }
}
