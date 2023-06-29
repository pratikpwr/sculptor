import 'package:flutter/material.dart';
import 'package:sculptor/src/features/events/screens/add_event_screen.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../ui/molecules/confirm_delete_dialog_box.dart';
import '../../../ui/molecules/dismissible_background.dart';
import '../../../ui/molecules/floating_action_button_item.dart';
import '../../../ui/molecules/sliver_app_bar_item.dart';
import '../models/event_model.dart';
import '../widgets/event_summary_widget.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  final List _events = [...EventModel.events];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButtonItem(
        onTap: () => context.pushScreen(const AddUpdateEventScreen()),
        icon: Icons.add_rounded,
      ),
      body: CustomScrollView(
        slivers: [
          const SliverAppBarItem(
            title: 'Ongoing Events',
            centerTitle: false,
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            sliver: SliverList.builder(
              itemCount: _events.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  confirmDismiss: (_) => confirmDeleteDialog(
                    context,
                    title: 'Delete Event',
                  ),
                  onDismissed: (_) {
                    setState(() {
                      _events.removeAt(index);
                    });
                  },
                  background: const DismissibleBackground(),
                  child: EventSummaryWidget(
                    event: _events[index],
                  ),
                );
              },
            ),
          ),
          SliverToBoxAdapter(
              child: Text(
            'Total ${_events.length} Events',
            textAlign: TextAlign.center,
            style: context.textTheme.bodyLarge,
          )),
          const SliverToBoxAdapter(
            child: SizedBox(height: 80),
          ),
        ],
      ),
    );
  }
}
