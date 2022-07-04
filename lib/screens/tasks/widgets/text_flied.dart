import 'package:flutter/material.dart';
import 'package:planificador/models/validations/input_validation.dart';
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
      onChanged: (String value) => onChange(value),
      decoration: InputDecoration(
        label: TextPrimary(label),
      ),
      keyboardType: textArea ? TextInputType.multiline : TextInputType.text,
      validator: (String? value) {
        String? isEmpty = InputValidation(value).empty();
        if (isEmpty != null) return isEmpty;

        return null;
      },
    );
  }
}
