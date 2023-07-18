import 'package:flutter/material.dart';
import 'package:sculptor/src/core/extensions/context_extension.dart';
import 'package:sculptor/src/ui/atoms/background_item.dart';
import 'package:sculptor/src/ui/atoms/padding.dart';
import 'package:sculptor/src/ui/molecules/glass_morphic_item.dart';
import 'package:sculptor/src/ui/themes/colors.dart';

import '../../../ui/molecules/sliver_app_bar_item.dart';
import '../models/ngo_model.dart';
import '../widgets/manager_details.dart';

class NGODetailScreen extends StatelessWidget {
  const NGODetailScreen({
    super.key,
    required this.ngo,
  });

  final NGOModel ngo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundItem(
        body: CustomScrollView(
          slivers: [
            SliverAppBarItem(title: ngo.name),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Hero(
                      tag: ngo.id,
                      child: GlassMorphicItem(
                        borderRadius: BorderRadius.circular(12),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            ngo.images.first,
                            height: 240,
                            width: double.infinity,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                    padding12,
                    Text(
                      ngo.name,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    padding8,
                    Text(
                      ngo.description,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: AppColors.secondaryText,
                          ),
                    ),
                    padding12,
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: AppColors.secondaryText,
                        ),
                        padding4,
                        Text(
                          ngo.address.address,
                          maxLines: 2,
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: AppColors.secondaryText,
                                  ),
                        ),
                      ],
                    ),
                    padding24,
                    ManagerDetails(
                      name: ngo.manager,
                      phone: ngo.managerPhone,
                      role: 'Manager',
                      imageUrl: 'https://picsum.photos/200/300',
                    ),
                    padding12,
                    ManagerDetails(
                      name: ngo.deputyManager,
                      phone: ngo.deputyManagerPhone,
                      role: 'Deputy Manager',
                      imageUrl: 'https://picsum.photos/200/300',
                    ),
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
}
