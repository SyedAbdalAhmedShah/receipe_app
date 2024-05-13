import 'package:receipe_app/constants/app_strings.dart';
import 'package:receipe_app/utils/extensions.dart';

class AppValidations {
  static String? nameValidtion(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.fieldNotEmpty;
    }
    return null;
  }

  static String? authorValidation(String? value) {
    if (value == null) {
      return AppStrings.fieldNotEmpty;
    } else if (!value.isValidEmail) {
      return AppStrings.fieldNotValid;
    }
    return null;
  }
}
