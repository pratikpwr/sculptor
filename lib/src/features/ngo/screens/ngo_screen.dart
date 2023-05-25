import 'package:flutter/material.dart';

import '../../../core/constants/assets.dart';
import '../../../ui/molecules/sliver_app_bar_item.dart';
import '../models/ngo_model.dart';
import '../widgets/ngo_summary_widget.dart';

class NGOScreen extends StatelessWidget {
  const NGOScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: [
          SliverAppBarItem(
            title: 'NGO',
            icon: Assets.menu,
            onTapIcon: () {},
            actions: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(
                  'https://wac-cdn.atlassian.com/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1028',
                  height: 44,
                  width: 44,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 12, right: 12, bottom: 76),
            sliver: SliverList.builder(
              itemCount: NGOModel.mockData.length,
              itemBuilder: (context, index) {
                return NGOSummaryWidget(
                  ngo: NGOModel.mockData[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
