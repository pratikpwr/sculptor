import 'package:flutter/material.dart';
import 'package:sculptor/src/core/extensions/context_extension.dart';

import '../../../ui/molecules/confirm_delete_dialog_box.dart';
import '../../../ui/molecules/dismissible_background.dart';
import '../../../ui/molecules/sliver_header_item.dart';
import '../models/ngo_model.dart';
import '../widgets/ngo_summary_widget.dart';

class NGOScreen extends StatefulWidget {
  const NGOScreen({super.key});

  @override
  State<NGOScreen> createState() => _NGOScreenState();
}

class _NGOScreenState extends State<NGOScreen> {
  final List _ngos = [...NGOModel.mockData];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: [
          const SliverHeaderItem(),
          SliverPadding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            sliver: SliverList.builder(
              itemCount: _ngos.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  confirmDismiss: (_) => confirmDeleteDialog(
                    context,
                    title: 'Delete NGO',
                  ),
                  onDismissed: (_) {
                    setState(() {
                      _ngos.removeAt(index);
                    });
                  },
                  background: const DismissibleBackground(),
                  child: NGOSummaryWidget(
                    ngo: _ngos[index],
                  ),
                );
              },
            ),
          ),
          SliverToBoxAdapter(
              child: Text(
            'Total ${_ngos.length} NGOs',
            textAlign: TextAlign.center,
            style: context.textTheme.bodyLarge,
          )),
          const SliverToBoxAdapter(
            child: SizedBox(height: 80),
          ),
        ],
      ),
    );
  }
}
