import 'package:flutter/material.dart';

import '../../../core/constants/assets.dart';
import '../../../ui/molecules/sliver_app_bar_item.dart';
import '../../../ui/molecules/sliver_header_item.dart';
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
          SliverHeaderItem(),
          SliverPadding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 76),
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
