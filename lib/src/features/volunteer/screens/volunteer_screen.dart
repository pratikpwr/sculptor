import 'package:flutter/material.dart';
import 'package:sculptor/src/core/extensions/context_extension.dart';

import '../../../ui/molecules/confirm_delete_dialog_box.dart';
import '../../../ui/molecules/dismissible_background.dart';
import '../../../ui/molecules/sliver_app_bar_item.dart';
import '../models/volunteer_model.dart';
import '../widgets/volunteer_summary_item.dart';

class VolunteerScreen extends StatefulWidget {
  const VolunteerScreen({Key? key}) : super(key: key);

  @override
  State<VolunteerScreen> createState() => _VolunteerScreenState();
}

class _VolunteerScreenState extends State<VolunteerScreen> {
  final List _volunteers = [...VolunteerModel.volunteers];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: [
          const SliverAppBarItem(
            title: 'Volunteers',
            centerTitle: false,
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            sliver: SliverList.builder(
              itemCount: _volunteers.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  confirmDismiss: (_) => confirmDeleteDialog(
                    context,
                    title: 'Delete Volunteer',
                  ),
                  onDismissed: (_) {
                    setState(() {
                      _volunteers.removeAt(index);
                    });
                  },
                  background: const DismissibleBackground(),
                  child: VolunteerSummaryItem(
                    volunteer: _volunteers[index],
                  ),
                );
              },
            ),
          ),
          SliverToBoxAdapter(
              child: Text(
            'Total ${_volunteers.length} Volunteers',
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
