import 'package:flutter/material.dart';

import '../../../ui/molecules/sliver_app_bar_item.dart';
import '../models/event_model.dart';
import '../widgets/event_summary_widget.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: [
          const SliverAppBarItem(
            title: 'Ongoing Events',
            centerTitle: false,
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 76),
            sliver: SliverList.builder(
              itemCount: EventModel.events.length,
              itemBuilder: (context, index) {
                return EventSummaryWidget(
                  event: EventModel.events[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
