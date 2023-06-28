import 'package:flutter/material.dart';
import 'package:sculptor/src/features/events/widgets/event_images.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../core/extensions/datetime_extension.dart';
import '../../../ui/atoms/glass_divider.dart';
import '../../../ui/atoms/padding.dart';
import '../../../ui/molecules/glass_morphic_item.dart';
import '../../../ui/themes/colors.dart';
import '../models/event_model.dart';

class EventSummaryWidget extends StatelessWidget {
  final EventModel event;

  EventSummaryWidget({
    super.key,
    required this.event,
  });

  final images = [''];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: GlassMorphicItem(
        borderRadius: BorderRadius.circular(12),
        opacity: 0.2,
        blur: 8,
        enableBorder: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EventImages(
              images: event.images,
            ),
            padding12,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    event.eventType.toUpperCase(),
                    style: context.textTheme.labelMedium?.copyWith(
                      color: AppColors.accentColor,
                    ),
                  ),
                  Text(
                    event.title,
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    style: context.textTheme.titleMedium,
                  ),
                  Text(
                    event.organizer,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: AppColors.secondaryText,
                    ),
                  ),
                ],
              ),
            ),
            padding6,
            _eventPeriod(context),
            padding12,
          ],
        ),
      ),
    );
  }

  Widget _eventPeriod(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              event.startDate.ddMMM,
              style: context.textTheme.bodyMedium?.copyWith(
                color: AppColors.primaryText,
              ),
            ),
            padding4,
            Text(
              event.startDate.hhmmA,
              style: context.textTheme.bodyMedium?.copyWith(
                color: AppColors.primaryText,
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
              style: context.textTheme.bodyMedium?.copyWith(
                color: AppColors.primaryText,
              ),
            ),
            padding4,
            Text(
              event.endDate.hhmmA,
              style: context.textTheme.bodyMedium?.copyWith(
                color: AppColors.primaryText,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
