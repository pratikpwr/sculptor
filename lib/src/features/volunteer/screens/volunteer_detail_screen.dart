import 'package:flutter/material.dart';
import 'package:sculptor/src/core/extensions/context_extension.dart';
import 'package:sculptor/src/core/extensions/datetime_extension.dart';
import 'package:sculptor/src/ui/atoms/background_item.dart';
import 'package:sculptor/src/ui/atoms/padding.dart';
import 'package:sculptor/src/ui/molecules/glass_morphic_item.dart';

import '../../../ui/molecules/sliver_app_bar_item.dart';
import '../models/volunteer_model.dart';

class VolunteerDetailScreen extends StatelessWidget {
  const VolunteerDetailScreen({
    super.key,
    required this.volunteer,
  });

  final VolunteerModel volunteer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundItem(
        body: CustomScrollView(
          slivers: [
            const SliverAppBarItem(
              title: "Volunteer",
              centerTitle: false,
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Column(
                      children: [
                        Hero(
                          tag: volunteer.id,
                          child: CircleAvatar(
                            radius: 48,
                            backgroundImage: NetworkImage(volunteer.photoUrl),
                          ),
                        ),
                        padding8,
                        Text(
                          volunteer.fullName,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                    padding16,
                    Text(
                      'Contact Details',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    padding8,
                    _volunteerContacts(context),
                    padding12,
                    Text(
                      'Personal Details',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    padding8,
                    _volunteerPersonal(context),
                    padding12,
                    Text(
                      'Address',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    padding8,
                    _volunteerAddress(context),
                    padding12,
                    SizedBox(
                      height: context.mediaQuery.padding.bottom + 32,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _volunteerContacts(BuildContext context) {
    return GlassMorphicItem(
      padding: const EdgeInsets.all(12),
      borderRadius: BorderRadius.circular(12),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.phone_rounded,
                size: 22,
              ),
              padding4,
              Text(
                volunteer.mobileNo,
                style: context.textTheme.bodyLarge,
              ),
            ],
          ),
          padding12,
          Row(
            children: [
              const Icon(
                Icons.email_rounded,
                size: 22,
              ),
              padding4,
              Text(
                volunteer.email ?? 'N/A',
                style: context.textTheme.bodyLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _volunteerPersonal(BuildContext context) {
    return GlassMorphicItem(
      padding: const EdgeInsets.all(12),
      borderRadius: BorderRadius.circular(12),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.calendar_month_rounded,
                size: 22,
              ),
              padding4,
              Text(
                DateTime(2000, 12, 2).ddMMyyyy,
                style: context.textTheme.bodyLarge,
              ),
            ],
          ),
          padding12,
          Row(
            children: [
              const Icon(
                Icons.male,
                size: 22,
              ),
              padding4,
              Text(
                volunteer.gender,
                style: context.textTheme.bodyLarge,
              ),
            ],
          ),
          padding12,
          Row(
            children: [
              const Icon(
                Icons.bloodtype_rounded,
                size: 22,
              ),
              padding4,
              Text(
                "AB+",
                style: context.textTheme.bodyLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _volunteerAddress(BuildContext context) {
    return GlassMorphicItem(
      padding: const EdgeInsets.all(12),
      borderRadius: BorderRadius.circular(12),
      child: Row(
        children: [
          const Icon(
            Icons.location_on_rounded,
            size: 22,
          ),
          padding4,
          Flexible(
            child: Text(
              volunteer.address,
              maxLines: 2,
              style: context.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
