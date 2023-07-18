import 'package:flutter/material.dart';
import 'package:sculptor/src/core/extensions/context_extension.dart';
import 'package:sculptor/src/core/extensions/datetime_extension.dart';
import 'package:sculptor/src/ui/atoms/background_item.dart';
import 'package:sculptor/src/ui/atoms/padding.dart';
import 'package:sculptor/src/ui/molecules/glass_morphic_item.dart';
import 'package:sculptor/src/ui/themes/colors.dart';

import '../../../ui/molecules/sliver_app_bar_item.dart';
import '../models/event_model.dart';
import '../widgets/event_images.dart';

class EventDetailScreen extends StatelessWidget {
  const EventDetailScreen({
    super.key,
    required this.event,
  });

  final EventModel event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundItem(
        body: CustomScrollView(
          slivers: [
            SliverAppBarItem(title: event.title),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Hero(
                      tag: event.id,
                      child: EventImages(
                        images: event.images,
                        borderRadius: BorderRadius.circular(12),
                        height: 260,
                      ),
                    ),
                    padding16,
                    Text(
                      event.title,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      event.organizer,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: AppColors.secondaryText,
                          ),
                    ),
                    padding4,
                    Text(
                      "Type: ${event.eventType}",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppColors.secondaryText,
                          ),
                    ),
                    padding12,
                    _eventPeriod(context),
                    padding12,
                    Text(
                      event.description,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: AppColors.secondaryText,
                          ),
                    ),
                    padding12,
                    SizedBox(
                      height: context.mediaQuery.padding.bottom + 32,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _eventPeriod(BuildContext context) {
    return GlassMorphicItem(
      padding: const EdgeInsets.all(12),
      borderRadius: BorderRadius.circular(12),
      child: Column(
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
                style: context.textTheme.bodyLarge,
              ),
            ],
          ),
          padding12,
          Row(
            children: [
              const Icon(
                Icons.watch_later_outlined,
                size: 22,
              ),
              padding4,
              Text(
                "${event.startDate.hhmmA} to ${event.endDate.hhmmA}",
                style: context.textTheme.bodyLarge,
              ),
            ],
          ),
          padding12,
          Row(
            children: [
              const Icon(
                Icons.location_on_rounded,
                color: AppColors.secondaryText,
              ),
              padding4,
              Flexible(
                child: Text(
                  event.address,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
