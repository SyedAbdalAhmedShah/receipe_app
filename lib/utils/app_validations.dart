import 'package:receipe_app/constants/app_strings.dart';

class AppValidations {
  static String? nameValidtion(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.nameNotNull;
    }
    return null;
  }
}
