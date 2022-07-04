import 'package:flutter/material.dart';
import 'package:planificador/widgets/texts/primary_text.dart';

TextFormField textField({
  bool? obscure,
  required String label,
  required String? Function(String? string) validatior,
  required void Function(String? string) onChange,
  TextInputType? keyboard,
}) {
  return TextFormField(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    keyboardType: keyboard,
    onChanged: onChange,
    obscureText: obscure ?? false,
    decoration: InputDecoration(
      label: TextPrimary(label),
    ),
    validator: (String? value) => validatior(value),
  );
}
