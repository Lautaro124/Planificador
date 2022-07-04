import 'package:email_validator/email_validator.dart';
import 'package:planificador/assets/enums/errors/input_errors.dart';

class InputValidation {
  final String? _value;

  InputValidation(this._value);

  String? empty() {
    if (_value!.isEmpty) return InputErrors.empty.errorMesage;
    return null;
  }

  String? email() {
    String? isEmpty = empty();
    if (isEmpty != null) return isEmpty;

    if (!EmailValidator.validate(_value!)) return InputErrors.email.errorMesage;
    return null;
  }
}
