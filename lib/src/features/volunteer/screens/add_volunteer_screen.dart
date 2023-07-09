import 'package:flutter/material.dart';

import '../../../ui/atoms/background_item.dart';
import '../../../ui/atoms/glass_textfield.dart';
import '../../../ui/atoms/padding.dart';
import '../../../ui/molecules/sliver_app_bar_item.dart';
import '../../../ui/organisms/stepper_item.dart';
import '../models/volunteer_model.dart';

class AddUpdateVolunteerScreen extends StatefulWidget {
  const AddUpdateVolunteerScreen({
    super.key,
    this.volunteer,
  });

  final VolunteerModel? volunteer;

  @override
  State<AddUpdateVolunteerScreen> createState() =>
      _AddUpdateVolunteerScreenState();
}

class _AddUpdateVolunteerScreenState extends State<AddUpdateVolunteerScreen> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundItem(
        body: CustomScrollView(
          slivers: [
            const SliverAppBarItem(
              title: 'Add Volunteer',
              centerTitle: false,
            ),
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
                headings: const [
                  'Volunteer Details',
                  'Personal Details',
                  'Address',
                ],
                items: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GlassTextField(
                        controller: TextEditingController(),
                        labelText: 'Volunteer Name',
                        hintText: 'Enter Volunteer Name',
                      ),
                      padding12,
                      GlassTextField(
                        controller: TextEditingController(),
                        hintText: 'Enter Phone No.',
                        labelText: 'Phone Number',
                      ),
                      padding12,
                      GlassTextField(
                        controller: TextEditingController(),
                        hintText: 'Enter Email address',
                        labelText: 'Email',
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GlassTextField(
                        controller: TextEditingController(),
                        hintText: 'Enter Date of Birth',
                        labelText: 'Date of Birth',
                      ),
                      padding12,
                      GlassTextField(
                        controller: TextEditingController(),
                        hintText: 'Enter Gender',
                        labelText: 'Gender',
                      ),
                      padding12,
                      GlassTextField(
                        controller: TextEditingController(),
                        hintText: 'Enter Blood Group',
                        labelText: 'Blood Group',
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
