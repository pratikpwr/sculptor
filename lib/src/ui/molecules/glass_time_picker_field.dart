import 'package:flutter/material.dart';

import '../../core/extensions/datetime_extension.dart';
import '../atoms/glass_textfield.dart';

class GlassTimePickerField extends StatefulWidget {
  const GlassTimePickerField({
    super.key,
    this.labelText,
    this.hintText,
    required this.value,
    required this.onChanged,
    this.firstTime,
    this.lastTime,
  });

  final String? labelText;
  final String? hintText;
  final TimeOfDay? value;
  final TimeOfDay? firstTime;
  final TimeOfDay? lastTime;
  final Function(TimeOfDay?) onChanged;

  @override
  State<GlassTimePickerField> createState() => _GlassTimePickerFieldState();
}

class _GlassTimePickerFieldState extends State<GlassTimePickerField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = widget.value?.hhmmA.toString() ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final TimeOfDay? pickedDate = await showTimePicker(
          context: context,
          initialTime: widget.value ?? TimeOfDay.now(),
        );
        if (pickedDate != null) {
          _controller.text = pickedDate.hhmmA.toString();
          widget.onChanged(pickedDate);
        }
      },
      child: GlassTextField(
        enabled: false,
        controller: _controller,
        hintText: widget.hintText,
        labelText: widget.labelText,
        suffixIcon: const Icon(
          Icons.access_time_rounded,
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
