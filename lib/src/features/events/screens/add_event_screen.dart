import 'package:flutter/material.dart';

import '../../../ui/atoms/background_item.dart';
import '../../../ui/atoms/glass_textfield.dart';
import '../../../ui/atoms/padding.dart';
import '../../../ui/molecules/sliver_app_bar_item.dart';
import '../../../ui/organisms/stepper_item.dart';
import '../models/event_model.dart';

class AddUpdateEventScreen extends StatefulWidget {
  const AddUpdateEventScreen({
    super.key,
    this.event,
  });

  final EventModel? event;

  @override
  State<AddUpdateEventScreen> createState() => _AddUpdateEventScreenState();
}

class _AddUpdateEventScreenState extends State<AddUpdateEventScreen> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundItem(
        body: CustomScrollView(
          slivers: [
            const SliverAppBarItem(title: 'Add Event'),
            SliverFillRemaining(
              child: StepperItem(
                currentStep: currentStep,
                onStepChange: (index) {
                  setState(() {
                    currentStep = index;
                  });
                },
                onSubmit: () {},
                onCancel: () {},
                headings: const ['Event Details', 'Address', 'Date and Time'],
                items: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
