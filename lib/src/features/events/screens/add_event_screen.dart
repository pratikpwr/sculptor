import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../ui/atoms/background_item.dart';
import '../../../ui/atoms/glass_button.dart';
import '../../../ui/atoms/glass_divider.dart';
import '../../../ui/atoms/glass_textfield.dart';
import '../../../ui/atoms/padding.dart';
import '../../../ui/molecules/glass_morphic_item.dart';
import '../../../ui/molecules/sliver_app_bar_item.dart';
import '../models/event_model.dart';

class AddUpdateEventScreen extends StatelessWidget {
  const AddUpdateEventScreen({
    super.key,
    this.event,
  });

  final EventModel? event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundItem(
        body: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  const SliverAppBarItem(title: 'Add Event'),
                  SliverPadding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 12,
                      bottom: 76,
                    ),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          GlassTextField(
                            controller: TextEditingController(),
                            labelText: 'Event Name',
                            hintText: 'Enter Event Name',
                          ),
                          padding12,
                          GlassTextField(
                            controller: TextEditingController(),
                            hintText: 'Enter Event Description',
                            labelText: 'Event Description',
                            maxLines: 4,
                          ),
                          padding12,
                          GlassTextField(
                            controller: TextEditingController(),
                            hintText: 'Enter event eligibility',
                            labelText: 'Eligibility',
                          ),
                          padding16,
                          const GlassDivider(),
                          padding16,
                          Text('Address', style: context.textTheme.titleMedium),
                          padding8,
                          GlassTextField(
                            controller: TextEditingController(),
                            hintText: 'Enter house number/name, area',
                            labelText: 'Address Line 1',
                          ),
                          padding12,
                          GlassTextField(
                            controller: TextEditingController(),
                            hintText: 'Enter city',
                            labelText: 'Address Line 2',
                          ),
                          padding12,
                          GlassTextField(
                            controller: TextEditingController(),
                            hintText: 'Enter pin code',
                            labelText: 'PinCode',
                          ),
                          padding16,
                          const GlassDivider(),
                          padding16,
                          Text('Date & Time Details',
                              style: context.textTheme.titleMedium),
                          padding8,
                          GlassTextField(
                            controller: TextEditingController(),
                            hintText: 'Select Date & Time',
                            labelText: 'Start Date & Time',
                          ),
                          padding12,
                          GlassTextField(
                            controller: TextEditingController(),
                            hintText: 'Select Date & Time',
                            labelText: 'End Date & Time',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GlassMorphicItem(
              blur: 3,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: GlassButton(
                      onPressed: () {},
                      text: 'Cancel',
                    ),
                  ),
                  padding16,
                  Expanded(
                    child: GlassButton(
                      onPressed: () {},
                      text: 'Save',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
