import 'package:flutter/material.dart';

import '../../../ui/atoms/padding.dart';
import '../../../ui/molecules/glass_morphic_item.dart';
import '../../../ui/themes/colors.dart';



class ManagerDetails extends StatelessWidget {
  const ManagerDetails({
    super.key,
    required this.name,
    required this.phone,
    required this.imageUrl,
    required this.role,
  });

  final String? imageUrl;
  final String name;
  final String phone;
  final String role;

  @override
  Widget build(BuildContext context) {
    return GlassMorphicItem(
      padding: const EdgeInsets.all(12),
      borderRadius: BorderRadius.circular(8),
      enableBorder: true,
      child: Row(
        children: [
          if (imageUrl != null) ...[
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                imageUrl!,
                height: 72,
                width: 72,
                fit: BoxFit.cover,
              ),
            ),
            padding12,
          ],
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: Theme.of(context).textTheme.titleLarge),
              padding4,
              Row(
                children: [
                  const Icon(
                    Icons.work,
                    color: AppColors.secondaryText,
                    size: 20,
                  ),
                  padding4,
                  Text(
                    role,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AppColors.secondaryText,
                    ),
                  ),
                ],
              ),
              padding4,
              Row(
                children: [
                  const Icon(
                    Icons.phone,
                    color: AppColors.secondaryText,
                    size: 20,
                  ),
                  padding4,
                  Text(
                    phone,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AppColors.secondaryText,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
