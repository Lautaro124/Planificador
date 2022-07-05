import 'package:flutter/material.dart';
import 'package:planificador/models/validations/input_validation.dart';
import 'package:planificador/screens/tasks/utils/contants.dart';
import 'package:planificador/widgets/texts/primary_text.dart';

class FieldFormCustorm extends StatelessWidget {
  final String label;
  final Function onChange;
  final bool textArea;
  const FieldFormCustorm(
      {Key? key,
      required this.label,
      required this.onChange,
      required this.textArea})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        label: TextPrimary(label),
      ),
      onChanged: (String value) => onChange(value),
      maxLines: textArea ? maxTextAreaLines : maxTextInputLines,
      validator: (String? value) => InputValidation(value).empty(),
      keyboardType: textArea ? TextInputType.multiline : TextInputType.text,
    );
  }
}
