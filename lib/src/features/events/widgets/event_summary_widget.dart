import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../core/extensions/datetime_extension.dart';
import '../../../ui/atoms/glass_divider.dart';
import '../../../ui/atoms/padding.dart';
import '../../../ui/molecules/glass_morphic_item.dart';
import '../../../ui/themes/colors.dart';
import '../models/event_model.dart';

class EventSummaryWidget extends StatelessWidget {
  final EventModel event;

  const EventSummaryWidget({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: GlassMorphicItem(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        borderRadius: BorderRadius.circular(12),
        opacity: 0.2,
        blur: 8,
        enableBorder: true,
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    event.image,
                    height: 70,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                padding12,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        event.eventType.toUpperCase(),
                        style: context.textTheme.labelMedium?.copyWith(
                          color: AppColors.accentColor,
                        ),
                      ),
                      padding4,
                      Text(
                        event.title,
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                        style: context.textTheme.titleMedium,
                      ),
                      padding4,
                      Text(
                        event.organizer,
                        style: context.textTheme.bodySmall?.copyWith(
                          color: AppColors.secondaryText,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            padding16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      event.startDate.ddMMM,
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: AppColors.primaryText,
                      ),
                    ),
                    Text(
                      'Start DateTime',
                      style: context.textTheme.bodySmall?.copyWith(
                        color: AppColors.secondaryText,
                      ),
                    ),
                  ],
                ),
                const VerticalGlassDivider(
                  height: 36,
                ),
                Column(
                  children: [
                    Text(
                      event.endDate.ddMMM,
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: AppColors.primaryText,
                      ),
                    ),
                    Text(
                      'End DateTime',
                      style: context.textTheme.bodySmall?.copyWith(
                        color: AppColors.secondaryText,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
