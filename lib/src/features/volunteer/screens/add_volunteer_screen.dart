import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../ui/atoms/background_item.dart';
import '../../../ui/atoms/glass_button.dart';
import '../../../ui/atoms/glass_divider.dart';
import '../../../ui/atoms/glass_textfield.dart';
import '../../../ui/atoms/padding.dart';
import '../../../ui/molecules/glass_morphic_item.dart';
import '../../../ui/molecules/sliver_app_bar_item.dart';
import '../models/volunteer_model.dart';

class AddUpdateVolunteerScreen extends StatelessWidget {
  const AddUpdateVolunteerScreen({
    super.key,
    this.volunteer,
  });

  final VolunteerModel? volunteer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundItem(
        body: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  const SliverAppBarItem(
                    title: 'Add Volunteer',
                    centerTitle: false,
                  ),
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
                            labelText: 'Volunteer Name',
                            hintText: 'Enter Volunteer Name',
                          ),
                          padding16,
                          const GlassDivider(),
                          padding16,
                          Text('Personal Details',
                              style: context.textTheme.titleMedium),
                          padding8,
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
                          padding16,
                          const GlassDivider(),
                          padding16,
                          Text('Contact Details',
                              style: context.textTheme.titleMedium),
                          padding8,
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
