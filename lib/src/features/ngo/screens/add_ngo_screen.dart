import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sculptor/src/ui/organisms/image_selector_item.dart';

import '../../../ui/atoms/background_item.dart';
import '../../../ui/atoms/glass_textfield.dart';
import '../../../ui/atoms/padding.dart';
import '../../../ui/molecules/sliver_app_bar_item.dart';
import '../../../ui/organisms/stepper_item.dart';
import '../models/ngo_model.dart';

class AddUpdateNGOScreen extends StatefulWidget {
  const AddUpdateNGOScreen({
    super.key,
    this.ngo,
  });

  final NGOModel? ngo;

  @override
  State<AddUpdateNGOScreen> createState() => _AddUpdateNGOScreenState();
}

class _AddUpdateNGOScreenState extends State<AddUpdateNGOScreen> {
  int currentStep = 0;

  List<File> images = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundItem(
        body: CustomScrollView(
          slivers: [
            const SliverAppBarItem(title: 'Add NGO'),
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
                headings: const ['NGO Details', 'Address', 'Manager Details'],
                items: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GlassTextField(
                        controller: TextEditingController(),
                        labelText: 'NGO Name',
                        hintText: 'Enter NGO Name',
                      ),
                      padding12,
                      GlassTextField(
                        controller: TextEditingController(),
                        hintText: 'Enter NGO Description',
                        labelText: 'NGO Description',
                        maxLines: 4,
                      ),
                      padding12,
                      ImageSelectorItem(
                        label: 'NGO Images',
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
                      GlassTextField(
                        controller: TextEditingController(),
                        hintText: 'Enter manager name',
                        labelText: 'Manager Name',
                      ),
                      padding12,
                      GlassTextField(
                        controller: TextEditingController(),
                        hintText: 'Enter manager phone number',
                        labelText: 'Manager Phone No.',
                      ),
                      padding12,
                      GlassTextField(
                        controller: TextEditingController(),
                        hintText: 'Enter manager name',
                        labelText: 'Deputy Manager Name',
                      ),
                      padding12,
                      GlassTextField(
                        controller: TextEditingController(),
                        hintText: 'Enter manager phone number',
                        labelText: 'Deputy Manager Phone No.',
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
