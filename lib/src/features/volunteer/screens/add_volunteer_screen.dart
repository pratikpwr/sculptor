import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/constants/regex.dart';
import '../../../ui/atoms/background_item.dart';
import '../../../ui/atoms/glass_textfield.dart';
import '../../../ui/atoms/padding.dart';
import '../../../ui/molecules/glass_date_picker_field.dart';
import '../../../ui/molecules/glass_dropdown.dart';
import '../../../ui/molecules/sliver_app_bar_item.dart';
import '../../../ui/organisms/image_selector_item.dart';
import '../../../ui/organisms/stepper_item.dart';
import '../models/volunteer_model.dart';

class Gender {
  final int id;
  final String title;

  Gender(this.id, this.title);
}

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

  Gender? gender;
  String? bloodGroup;
  DateTime? dateOfBirth;

  List<File> images = [];

  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final nameController = TextEditingController();

  final volunteerFormKey = GlobalKey<FormState>();
  final addressFormKey = GlobalKey<FormState>();
  final personalFormKey = GlobalKey<FormState>();

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
                  Form(
                    autovalidateMode: AutovalidateMode.always,
                    key: volunteerFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GlassTextField(
                          controller: nameController,
                          labelText: 'Volunteer Name',
                          hintText: 'Enter Volunteer Name',
                        ),
                        padding12,
                        ImageSelectorItem(
                          label: 'Volunteer Image',
                          images: images,
                          maxImages: 1,
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
                        padding12,
                        GlassTextField(
                          controller: phoneController,
                          hintText: 'Enter Phone No.',
                          labelText: 'Phone Number',
                          keyboardType: TextInputType.phone,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter phone number';
                            }
                            if (value.length != 10) {
                              return 'Please enter valid phone number';
                            }
                            return null;
                          },
                        ),
                        padding12,
                        GlassTextField(
                            controller: emailController,
                            hintText: 'Enter Email address',
                            labelText: 'Email',
                            validator: (String? value) {
                              final regex = RegExp(emailRegEx);

                              return value!.isNotEmpty && !regex.hasMatch(value)
                                  ? 'Enter a valid email address'
                                  : null;
                            }),
                      ],
                    ),
                  ),
                  Form(
                    autovalidateMode: AutovalidateMode.always,
                    key: personalFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GlassDatePickerField(
                          hintText: 'Enter Date of Birth',
                          labelText: 'Date of Birth',
                          value: dateOfBirth,
                          onChanged: (value) {
                            setState(() {
                              dateOfBirth = value;
                            });
                          },
                        ),
                        padding12,
                        GlassDropDown<Gender>(
                          labelText: 'Gender',
                          hint: 'Select Gender',
                          items: [
                            Gender(1, 'male'),
                            Gender(2, 'female'),
                          ],
                          value: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value;
                            });
                          },
                          itemToString: (value) {
                            return value.title;
                          },
                        ),
                        padding12,
                        GlassDropDown(
                          labelText: 'Blood Group',
                          hint: 'Select Blood Group',
                          items: const [
                            'A+',
                            'A-',
                            'B+',
                            'B-',
                            'AB+',
                            'AB-',
                            'O+',
                            'O-',
                          ],
                          value: bloodGroup,
                          onChanged: (value) {
                            setState(() {
                              bloodGroup = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Form(
                    autovalidateMode: AutovalidateMode.always,
                    key: addressFormKey,
                    child: Column(
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
