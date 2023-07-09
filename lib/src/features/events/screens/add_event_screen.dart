import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sculptor/src/core/extensions/context_extension.dart';
import 'package:sculptor/src/ui/molecules/glass_date_picker_field.dart';
import 'package:sculptor/src/ui/molecules/glass_time_picker_field.dart';

import '../../../ui/atoms/background_item.dart';
import '../../../ui/atoms/glass_textfield.dart';
import '../../../ui/atoms/padding.dart';
import '../../../ui/molecules/sliver_app_bar_item.dart';
import '../../../ui/organisms/image_selector_item.dart';
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

  DateTime? startDate;
  DateTime? endDate;
  TimeOfDay? startTime;
  TimeOfDay? endTime;

  List<File> images = [];

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
                      padding12,
                      ImageSelectorItem(
                        label: 'Event Images',
                        images: images,
                        onImageAdded: (image) {
                          setState(() {
                            images.add(image);
                          });
                        },
                        onImageRemoved: (index) {
                          setState(() {
                            images.removeAt(index);
                          });
                        },
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
                      Text(
                        'Start Date and Time',
                        style: context.textTheme.bodyLarge,
                      ),
                      padding8,
                      GlassDatePickerField(
                        hintText: 'Select Start Date',
                        labelText: 'Start Date',
                        value: startDate,
                        onChanged: (value) {
                          setState(() {
                            startDate = value;
                          });
                        },
                      ),
                      padding12,
                      GlassTimePickerField(
                        value: startTime,
                        onChanged: (value) {
                          setState(() {
                            startTime = value;
                          });
                        },
                        labelText: 'Start Time',
                        hintText: 'Select Start Time',
                      ),
                      padding16,
                      Text(
                        'End Date and Time',
                        style: context.textTheme.bodyLarge,
                      ),
                      padding8,
                      GlassDatePickerField(
                        hintText: 'Select Date',
                        labelText: 'End Date',
                        value: endDate,
                        onChanged: (value) {
                          setState(() {
                            endDate = value;
                          });
                        },
                      ),
                      padding12,
                      GlassTimePickerField(
                        value: endTime,
                        onChanged: (value) {
                          setState(() {
                            endTime = value;
                          });
                        },
                        labelText: 'End Time',
                        hintText: 'Select End Time',
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
