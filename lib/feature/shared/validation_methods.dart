import 'package:photomapalbummobile/consts/appstrings.dart';

class ValidationMethods {
  //TODO Dodać internationalization!
  static String onNullMessage(String noun) => "Pole $noun nie może być puste!";

  static String? notEmptyValidator(String value, String noun) {
    if (value.isEmpty) {
      //TODO Dodać internationalization!
      return "Proszę podac $noun";
    }

    return null;
  }

  static String? lengthValidator(String value, int length, String noun) {
    if (value.length != length) {
      //TODO Dodać internationalization!
      return "$noun musi mieć długość conajmniej ${length.toString()} znaków!";
    }

    return null;
  }
}
