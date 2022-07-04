import 'package:flutter/material.dart';
import 'package:planificador/assets/enums/errors/input_errors.dart';
import 'package:planificador/widgets/snack_bar/snack_bar.dart';

bool detectEmptyValue(BuildContext context, String value) {
  if (value.isEmpty) {
    Snack.showSnackbar(context, text: InputErrors.empty.errorMesage);
    return true;
  }
  return false;
}
