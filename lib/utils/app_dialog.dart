import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppDialogs {
  static customDialog(BuildContext context, String title, String desc) async {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.error,
      animType: AnimType.rightSlide,
      title: title,
      desc: desc,
      btnOkOnPress: () {},
    ).show();
  }

  static Future<void> showToast(
      {required String message, required BuildContext ctx}) async {
    await Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Theme.of(ctx).colorScheme.primary,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
