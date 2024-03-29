import 'package:flutter/material.dart';

import '../../../ui/atoms/padding.dart';
import '../../../ui/molecules/glass_morphic_item.dart';
import '../../../ui/themes/colors.dart';
import '../models/volunteer_model.dart';
import '../screens/volunteer_detail_screen.dart';

class VolunteerSummaryItem extends StatelessWidget {
  const VolunteerSummaryItem({
    super.key,
    required this.volunteer,
  });

  final VolunteerModel volunteer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => VolunteerDetailScreen(volunteer: volunteer),
            ),
          );
        },
        child: GlassMorphicItem(
          padding: const EdgeInsets.all(8),
          borderRadius: BorderRadius.circular(12),
          opacity: 0.2,
          blur: 8,
          enableBorder: true,
          child: Row(
            children: [
              Hero(
                tag: volunteer.id,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    volunteer.photoUrl,
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              padding12,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      volunteer.fullName,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    padding4,
                    Row(
                      children: [
                        const Icon(
                          Icons.phone,
                          size: 16,
                          color: AppColors.accentColor,
                        ),
                        padding4,
                        Text(
                          volunteer.mobileNo,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    padding4,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 16,
                          color: AppColors.accentColor,
                        ),
                        padding4,
                        Expanded(
                          child: Text(
                            volunteer.address,
                            maxLines: 2,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
