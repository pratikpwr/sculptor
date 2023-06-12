import 'package:flutter/material.dart';

import '../../core/extensions/context_extension.dart';
import 'icon_button_item.dart';

class SliverAppBarItem extends StatelessWidget {
  const SliverAppBarItem({
    super.key,
    required this.title,
    this.icon,
    this.onTapIcon,
    this.actions = const [],
  });

  final String title;
  final String? icon;
  final VoidCallback? onTapIcon;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
      sliver: SliverAppBar(
        title: Text(title, style: context.textTheme.titleLarge),
        pinned: false,
        snap: false,
        floating: true,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        leading: icon != null
            ? Padding(
                padding: const EdgeInsets.all(2),
                child: IconButtonItem(
                  icon: icon!,
                  size: 24,
                  onTap: onTapIcon,
                  color: Colors.indigo,
                ),
              )
            : null,
        actions: actions,
      ),
    );
  }
}