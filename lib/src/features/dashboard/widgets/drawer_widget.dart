import 'package:flutter/material.dart';
import 'package:sculptor/src/features/ngo/screens/add_ngo_screen.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../ui/atoms/glass_divider.dart';
import '../../../ui/atoms/padding.dart';
import '../../../ui/molecules/glass_morphic_item.dart';
import '../../../ui/themes/colors.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassMorphicItem(
      width: 250,
      height: context.screenHeight,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            padding24,
            ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image.network(
                'https://picsum.photos/90/90',
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            padding12,
            Text(
              'Sanjay Kumar',
              style: context.textTheme.titleMedium,
            ),
            padding8,
            Text(
              'Head of staff',
              style: context.textTheme.bodyMedium?.copyWith(
                color: AppColors.secondaryText,
              ),
            ),
            padding16,
            const GlassDivider(),
            padding16,
            DrawerItem(
              icon: Icons.calendar_month_rounded,
              title: 'My Events',
              onTap: () {},
            ),
            DrawerItem(
              icon: Icons.history_rounded,
              title: 'History',
              onTap: () {},
            ),
            DrawerItem(
              icon: Icons.handshake_rounded,
              title: 'Volunteered',
              onTap: () {},
            ),
            padding16,
            const GlassDivider(),
            padding16,
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Admin',
                style: context.textTheme.bodyLarge,
              ),
            ),
            padding12,
            DrawerItem(
              icon: Icons.account_balance_rounded,
              title: 'Add NGOs',
              onTap: () => context.pushScreen(const AddUpdateNGOScreen()),
            ),
            DrawerItem(
              icon: Icons.calendar_month_rounded,
              title: 'Add Events',
              onTap: () {},
            ),
            DrawerItem(
              icon: Icons.handshake_rounded,
              title: 'Add Volunteers',
              onTap: () {},
            ),
            const Spacer(),
            Center(
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.logout_rounded,
                        color: AppColors.primaryText,
                        size: 18,
                      ),
                      padding12,
                      Text(
                        'Logout',
                        style: context.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  // version
                  padding12,
                  Text(
                    'Version 1.0.0',
                    style: context.textTheme.bodySmall?.copyWith(
                      color: AppColors.secondaryText,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const DrawerItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: AppColors.primaryText,
              size: 18,
            ),
            padding12,
            Text(
              title,
              style: context.textTheme.bodyMedium,
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.accentColor,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
