import 'package:flutter/material.dart';
import 'package:sculptor/src/ui/molecules/floating_action_button_item.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../ui/atoms/glass_textfield.dart';
import '../../../ui/molecules/confirm_delete_dialog_box.dart';
import '../../../ui/molecules/dismissible_background.dart';
import '../../../ui/molecules/sliver_app_bar_item.dart';
import '../models/volunteer_model.dart';
import '../widgets/volunteer_summary_item.dart';
import 'add_volunteer_screen.dart';

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
      floatingActionButton: FloatingActionButtonItem(
        onTap: () => context.pushScreen(const AddUpdateVolunteerScreen()),
        icon: Icons.add_rounded,
      ),
      body: CustomScrollView(
        slivers: [
          const SliverAppBarItem(
            title: 'Volunteers',
            centerTitle: false,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(48),
              child: GlassTextField(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                maxLines: 1,
                textAlignVertical: TextAlignVertical.center,
              ),
            ),
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
