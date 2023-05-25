import 'package:flutter/material.dart';

import '../../../core/constants/assets.dart';
import '../../../ui/atoms/padding.dart';
import '../../../ui/molecules/app_bar_item.dart';
import '../models/ngo_model.dart';
import '../widgets/ngo_summary_widget.dart';

class NGOScreen extends StatelessWidget {
  const NGOScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Column(
          children: [
            AppBarItem(
              title: 'NGO',
              icon: Assets.menu,
              onTapIcon: () {},
            ),
            Expanded(
              child: ListView.builder(
                itemCount: NGOModel.mockData.length,
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 76),
                itemBuilder: (context, index) {
                  return NGOSummaryWidget(
                    ngo: NGOModel.mockData[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
