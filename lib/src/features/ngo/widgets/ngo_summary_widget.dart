import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../ui/atoms/padding.dart';
import '../../../ui/molecules/glass_morphic_item.dart';
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
      padding: const EdgeInsets.only(bottom: 8.0),
      child: GlassMorphicItem(
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white.withOpacity(0.3),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                ngo.image,
                height: 92,
                width: 92,
                fit: BoxFit.cover,
              ),
            ),
            padding12,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ngo.name,
                    style: context.textTheme.titleMedium!
                        .copyWith(color: Colors.indigo),
                  ),
                  padding12,
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 18,
                        color: Colors.grey[600],
                      ),
                      padding4,
                      Text(
                        ngo.address,
                        style: context.textTheme.bodyMedium!
                            .copyWith(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  padding4,
                  Row(
                    children: [
                      Icon(
                        Icons.person_2_outlined,
                        size: 18,
                        color: Colors.grey[600],
                      ),
                      padding4,
                      Text(
                        ngo.manager,
                        style: context.textTheme.bodyMedium!
                            .copyWith(color: Colors.grey[600]),
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
