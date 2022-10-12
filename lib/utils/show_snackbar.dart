
import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/snackbar_content_type.dart';

import 'custom_snackbar.dart';

void showsnackbar(BuildContext context, String message, SnackbarContentType errorType) {
    var snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: CustomSnackbar(
        title: errorType == SnackbarContentType.success ? 'Success' : 'Error',
        message:
            message,

        /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
        contentType: errorType,
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }