import 'package:flutter/material.dart';

import '../../core/extensions/context_extension.dart';
import '../atoms/padding.dart';
import 'glass_morphic_item.dart';

Future<bool?> confirmDeleteDialog(
  BuildContext context,
) =>
    showDialog<bool>(
      context: context,
      builder: (context) => SizedBox(
        height: context.screenHeight,
        width: context.screenWidth,
        child: Center(
          child: GlassMorphicItem(
            width: context.screenWidth * 0.8,
            padding: const EdgeInsets.all(24),
            borderRadius: BorderRadius.circular(6),
            blur: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Are you sure you want to delete?',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                padding16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, false);
                      },
                      child: Text(
                        'NO',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      child: Text(
                        'YES',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
