import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../ui/atoms/glass_divider.dart';
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
      padding: const EdgeInsets.only(bottom: 12.0),
      child: GlassMorphicItem(
        // height: 220,
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
                        height: 180,
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
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              size: 18,
                              color: Colors.black,
                            ),
                            padding4,
                            Text(
                              ngo.address,
                              style: context.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        padding4,
                        Row(
                          children: [
                            const Icon(
                              Icons.person_2_outlined,
                              size: 18,
                              color: Colors.black,
                            ),
                            padding4,
                            Text(
                              ngo.manager,
                              style: context.textTheme.bodyMedium,
                            ),
                          ],
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
