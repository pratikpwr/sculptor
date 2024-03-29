import 'package:flutter/material.dart';

import '../../core/extensions/datetime_extension.dart';
import '../atoms/glass_textfield.dart';

class GlassDatePickerField extends StatefulWidget {
  const GlassDatePickerField({
    super.key,
    this.labelText,
    this.hintText,
    required this.value,
    required this.onChanged,
    this.firstDate,
    this.lastDate,
  });

  final String? labelText;
  final String? hintText;
  final DateTime? value;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final Function(DateTime?) onChanged;

  @override
  State<GlassDatePickerField> createState() => _GlassDatePickerFieldState();
}

class _GlassDatePickerFieldState extends State<GlassDatePickerField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = widget.value?.ddMMyyyy.toString() ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: widget.value ?? DateTime.now(),
          firstDate: widget.firstDate ?? DateTime(1800),
          lastDate: widget.lastDate ?? DateTime(2200),
        );
        if (pickedDate != null) {
          _controller.text = pickedDate.ddMMyyyy.toString();
          widget.onChanged(pickedDate);
        }
      },
      child: GlassTextField(
        enabled: false,
        controller: _controller,
        hintText: widget.hintText,
        labelText: widget.labelText,
        suffixIcon: const Icon(
          Icons.calendar_month_rounded,
          size: 26,
        ),
        textAlignVertical: TextAlignVertical.center,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
