import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/atoms/padding.dart';

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
    return Container(
      height: 80,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      // decoration: const BoxDecoration(
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(30),
      //     topRight: Radius.circular(30),
      //   ),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.black12,
      //       blurRadius: 10,
      //       spreadRadius: 2,
      //     ),
      //   ],
      // ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            items.length,
            (index) => GestureDetector(
              onTap: () => onTap(index),
              child: _BottomNavBarItemWidget(
                item: items[index],
                isSelected: selectedIndex == index,
              ),
            ),
          )),
    );
  }
}

class BottomNavBarItem {
  BottomNavBarItem({
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          item.icon,
          color: isSelected ? Theme.of(context).primaryColor : Colors.grey,
        ),
        padding4,
        Text(
          item.title,
          style: GoogleFonts.poppins(
            color: isSelected ? Theme.of(context).primaryColor : Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
