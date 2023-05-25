import 'package:flutter/material.dart';

import '../../core/extensions/context_extension.dart';
import 'icon_button_item.dart';

class AppBarItem extends StatelessWidget {
  const AppBarItem({
    super.key,
    required this.title,
    this.icon,
    this.onTapIcon,
  });

  final String title;
  final String? icon;
  final VoidCallback? onTapIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (icon != null && onTapIcon != null)
            IconButtonItem(
              icon: icon!,
              onTap: onTapIcon!,
              color: Colors.indigo,
            ),
          Text(
            title,
            style: context.textTheme.titleLarge!.copyWith(color: Colors.black),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.network(
              'https://wac-cdn.atlassian.com/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1028',
              height: 44,
              width: 44,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
