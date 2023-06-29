import 'package:flutter/material.dart';
import 'package:sculptor/src/ui/atoms/glass_divider.dart';

import '../../core/extensions/context_extension.dart';
import '../atoms/glass_button.dart';
import '../atoms/padding.dart';
import '../molecules/glass_morphic_item.dart';
import '../themes/colors.dart';

class StepperItem extends StatelessWidget {
  const StepperItem({
    super.key,
    required this.currentStep,
    required this.items,
    required this.onSubmit,
    required this.onStepChange,
    required this.onCancel,
  });

  final int currentStep;
  final List<Widget> items;
  final Function(int) onStepChange;
  final VoidCallback onSubmit;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (index != 0) ...[
                        const GlassDivider(
                          width: 32,
                          height: 2,
                        ),
                        padding4,
                      ],
                      GlassMorphicItem(
                        width: 40,
                        height: 40,
                        borderRadius: BorderRadius.circular(20),
                        color: currentStep == index
                            ? AppColors.accentColor
                            : Colors.white,
                        opacity: currentStep == index ? 0.7 : 0.4,
                        child: Center(
                          child: Text(
                            '${index + 1}',
                            style: context.textTheme.bodyLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
        padding20,
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: items[currentStep],
          ),
        ),
        GlassMorphicItem(
          blur: 3,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: GlassButton(
                  onPressed: () {
                    if (currentStep > 0) {
                      onStepChange(currentStep - 1);
                    } else {
                      onCancel();
                    }
                  },
                  text: currentStep > 0 ? 'Previous' : 'Cancel',
                ),
              ),
              padding16,
              Expanded(
                child: GlassButton(
                  onPressed: () {
                    if (currentStep < items.length - 1) {
                      onStepChange(currentStep + 1);
                    } else {
                      onSubmit();
                    }
                  },
                  text: currentStep < items.length - 1 ? 'Next' : 'Submit',
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
