import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../ui/molecules/confirm_delete_dialog_box.dart';
import '../../../ui/molecules/dismissible_background.dart';
import '../../../ui/molecules/floating_action_button_item.dart';
import '../../../ui/molecules/header_item.dart';
import '../models/ngo_model.dart';
import '../widgets/ngo_summary_widget.dart';
import 'add_ngo_screen.dart';
import 'ngo_map_screen.dart';

class NGOScreen extends StatefulWidget {
  const NGOScreen({super.key});

  @override
  State<NGOScreen> createState() => _NGOScreenState();
}

class _NGOScreenState extends State<NGOScreen> {
  final List<NGOModel> _ngos = [...NGOModel.mockData];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButtonItem(
        onTap: () => context.pushScreen(const AddUpdateNGOScreen()),
        icon: Icons.add_rounded,
      ),
      body: Stack(
        children: [
          if (currentIndex == 0)
            CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(height: context.mediaQuery.padding.top + 56),
                ),
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
          if (currentIndex == 1)
            NGOMapScreen(
              ngos: _ngos,
            ),
          Positioned(
            top: context.mediaQuery.padding.top + 12,
            child: HeaderItem(
              currentIndex: currentIndex,
              onChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              items: const ['List', 'Map'],
            ),
          ),
        ],
      ),
    );
  }
}
