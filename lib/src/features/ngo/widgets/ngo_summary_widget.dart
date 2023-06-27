import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../ui/atoms/glass_divider.dart';
import '../../../ui/atoms/padding.dart';
import '../../../ui/molecules/glass_morphic_item.dart';
import '../../../ui/themes/colors.dart';
import '../models/ngo_model.dart';

class NGOSummaryWidget extends StatelessWidget {
  const NGOSummaryWidget({
    super.key,
    required this.ngo,
  });

  final NGOModel ngo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: GlassMorphicItem(
        padding: const EdgeInsets.symmetric(vertical: 12),
        borderRadius: BorderRadius.circular(12),
        opacity: 0.2,
        blur: 5,
        enableBorder: true,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GlassMorphicItem(
                    borderRadius: BorderRadius.circular(12),
                    opacity: 0.3,
                    enableShadow: false,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        ngo.image,
                        height: 160,
                        width: 150,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  padding12,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ngo.name,
                          style: context.textTheme.titleMedium,
                        ),
                        padding12,
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              UserAndNumberItem(
                                name: 'Sanjay Kumar',
                                number: '9876543210',
                              ),
                              padding8,
                              UserAndNumberItem(
                                name: 'Kiran Modi',
                                number: '9876543210',
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
            padding8,
            const GlassDivider(),
            padding8,
            Text(
              'Sun Enclave, JB road, Noida, UP',
              style: context.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

class UserAndNumberItem extends StatelessWidget {
  const UserAndNumberItem({
    super.key,
    required this.name,
    required this.number,
  });

  final String name;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(
              Icons.person_2_outlined,
              size: 20,
              color: AppColors.secondaryText,
            ),
            padding4,
            Text(
              name,
              style: context.textTheme.bodyMedium!.copyWith(
                color: AppColors.secondaryText,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        padding4,
        Row(
          children: [
            const Icon(
              Icons.phone_outlined,
              size: 20,
              color: AppColors.secondaryText,
            ),
            padding4,
            Text(
              number,
              style: context.textTheme.bodyMedium!
                  .copyWith(color: AppColors.secondaryText),
            ),
          ],
        )
      ],
    );
  }
}
