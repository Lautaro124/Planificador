import 'package:flutter/material.dart';
import 'package:planificador/assets/enums/errors/submits_error.dart';
import 'package:planificador/widgets/snack_bar/snack_bar.dart';

bool camEntry(BuildContext context, bool validated) {
  if (validated) {
    Snack.showSnackbar(context, text: SubmitError.verify.errorMessage);
    return false;
  }
  return true;
}
