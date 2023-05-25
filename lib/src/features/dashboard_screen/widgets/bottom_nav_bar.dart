import 'package:flutter/material.dart';
import 'package:sculptor/src/widgets/atoms/icon_item.dart';

import '../../../widgets/molecules/glass_morphic_widget.dart';

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
    return GlassMorphicBackground(
      height: 64,
      blur: 8,
      color: Colors.white.withOpacity(0.5),
      borderRadius: BorderRadius.circular(30),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            items.length,
            (index) => GlassMorphicBackground(
              borderRadius: BorderRadius.circular(30),
              color: selectedIndex == index
                  ? Colors.indigoAccent.withOpacity(0.1)
                  : Colors.transparent,
              child: GestureDetector(
                onTap: () => onTap(index),
                child: _BottomNavBarItemWidget(
                  item: items[index],
                  isSelected: selectedIndex == index,
                ),
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
    super.key,
    required this.item,
    required this.isSelected,
  });

  final BottomNavBarItem item;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 84,
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
