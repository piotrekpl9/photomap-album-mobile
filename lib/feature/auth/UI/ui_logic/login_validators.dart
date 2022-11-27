import 'package:photomapalbummobile/consts/appstrings.dart';
import 'package:photomapalbummobile/feature/shared/validation_methods.dart';

class LoginValidators {
  static String? emailValidator(String? value) {
    const String noun = AppStrings.email;

    if (value == null) return ValidationMethods.onNullMessage(noun);

    var emptyCheck = ValidationMethods.notEmptyValidator(value, noun);
    if (emptyCheck != null) return emptyCheck;

    return null;
  }

  static String? passwordValidator(String? value) {
    const String noun = AppStrings.password;

    if (value == null) return ValidationMethods.onNullMessage(noun);

    var emptyCheck = ValidationMethods.notEmptyValidator(value, noun);
    if (emptyCheck != null) return emptyCheck;

    return null;
  }
}
