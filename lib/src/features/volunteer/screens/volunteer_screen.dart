import 'package:flutter/material.dart';

import '../../../ui/molecules/sliver_app_bar_item.dart';
import '../models/volunteer_model.dart';
import '../widgets/volunteer_summary_item.dart';

class VolunteerScreen extends StatelessWidget {
  const VolunteerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: [
          const SliverAppBarItem(
            title: 'Volunteers',
            centerTitle: false,
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 76),
            sliver: SliverList.builder(
              itemCount: VolunteerModel.volunteers.length,
              itemBuilder: (context, index) {
                return VolunteerSummaryItem(
                  volunteer: VolunteerModel.volunteers[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
