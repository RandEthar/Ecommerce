import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

class CustomSnackbarContent extends StatelessWidget {
  const CustomSnackbarContent(
      {super.key,
      required this.title,
      required this.message,
      required this.contentType});
  final String title;
  final String message;
  final ContentType contentType;
  @override
  Widget build(BuildContext context) {
    return SnackBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        behavior: SnackBarBehavior.fixed,
        content: AwesomeSnackbarContent(
          title: title,
          message: message,
          contentType: contentType,
        ));
  }
}
