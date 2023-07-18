import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../ui/atoms/glass_divider.dart';
import '../../../ui/atoms/padding.dart';
import '../../../ui/molecules/glass_morphic_item.dart';
import '../../../ui/themes/colors.dart';
import '../models/ngo_model.dart';
import '../screens/ngo_detail_screen.dart';

class NGOSummaryWidget extends StatelessWidget {
  const NGOSummaryWidget({
    super.key,
    required this.ngo,
    this.isMapCard = false,
    this.close,
  });

  final NGOModel ngo;
  final bool isMapCard;
  final VoidCallback? close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isMapCard
          ? const EdgeInsets.all(16.0)
          : const EdgeInsets.only(bottom: 12.0),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => NGODetailScreen(ngo: ngo),
                ),
              );
            },
            child: GlassMorphicItem(
              padding: const EdgeInsets.symmetric(vertical: 12),
              borderRadius: BorderRadius.circular(12),
              opacity: isMapCard ? 0.8 : 0.2,
              blur: isMapCard ? 8 : 5,
              enableBorder: true,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Hero(
                          tag: ngo.id,
                          child: GlassMorphicItem(
                            borderRadius: BorderRadius.circular(12),
                            opacity: 0.3,
                            enableShadow: false,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                ngo.images.first,
                                height: 160,
                                width: 150,
                                fit: BoxFit.fitHeight,
                              ),
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
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    UserAndNumberItem(
                                      name: ngo.manager,
                                      number: ngo.managerPhone,
                                    ),
                                    padding8,
                                    UserAndNumberItem(
                                      name: ngo.deputyManager,
                                      number: ngo.deputyManagerPhone,
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
                    ngo.address.address,
                    style: context.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
          if (close != null && isMapCard)
            Positioned(
              right: 12,
              top: 12,
              child: GestureDetector(
                onTap: close,
                child: const Icon(
                  Icons.close,
                  color: AppColors.secondaryText,
                ),
              ),
            ),
        ],
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
