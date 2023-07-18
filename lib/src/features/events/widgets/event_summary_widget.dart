import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../core/extensions/datetime_extension.dart';
import '../../../ui/atoms/padding.dart';
import '../../../ui/molecules/glass_morphic_item.dart';
import '../../../ui/themes/colors.dart';
import '../models/event_model.dart';
import '../screens/event_detail_screen.dart';
import 'event_images.dart';

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
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => EventDetailScreen(event: event),
            ),
          );
        },
        child: GlassMorphicItem(
          borderRadius: BorderRadius.circular(12),
          opacity: 0.2,
          blur: 8,
          enableBorder: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Hero(
                    tag: event.id,
                    child: EventImages(
                      images: event.images,
                    ),
                  ),
                  Positioned(
                    top: 16,
                    child: GlassMorphicItem(
                      height: 36,
                      width: 64,
                      opacity: 0.4,
                      blur: 8,
                      color: AppColors.accentColor,
                      child: Center(
                        child: Text(
                          '20 Days',
                          style: context.textTheme.labelMedium
                              ?.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: GlassMorphicItem(
                      opacity: 0.4,
                      blur: 8,
                      borderRadius: BorderRadius.circular(30),
                      padding: const EdgeInsets.all(10),
                      child: const Center(
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              padding8,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
              padding8,
              _eventPeriod(context),
              padding12,
            ],
          ),
        ),
      ),
    );
  }

  Widget _eventPeriod(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            const Icon(
              Icons.calendar_month_rounded,
              size: 22,
            ),
            padding4,
            Text(
              "${event.startDate.ddMMM} - ${event.endDate.ddMMMyy}",
              style: context.textTheme.bodyMedium?.copyWith(
                color: AppColors.primaryText,
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.watch_later_outlined,
              size: 22,
            ),
            padding4,
            Text(
              "${event.startDate.hhmmA} to ${event.endDate.hhmmA}",
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
