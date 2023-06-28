import 'package:flutter/material.dart';

import '../../core/extensions/context_extension.dart';
import '../atoms/glass_divider.dart';
import '../atoms/padding.dart';
import '../themes/colors.dart';
import 'glass_morphic_item.dart';

Future<bool?> confirmDeleteDialog(
  BuildContext context, {
  String? title,
}) =>
    showDialog<bool>(
      context: context,
      barrierColor: Colors.black.withOpacity(0.1),
      builder: (context) => SizedBox(
        height: context.screenHeight,
        width: context.screenWidth,
        child: Center(
          child: GlassMorphicItem(
            width: context.screenWidth * 0.8,
            // padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
            borderRadius: BorderRadius.circular(12),
            blur: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                padding24,
                Text(
                  title ?? 'Delete',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                padding4,
                Text(
                  'Are you sure you want to delete?',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                padding24,
                const GlassDivider(),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context, false);
                        },
                        child: Text(
                          'NO',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: AppColors.accentColor),
                        ),
                      ),
                      const VerticalGlassDivider(),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context, true);
                        },
                        child: Text(
                          'YES',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: AppColors.accentColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
