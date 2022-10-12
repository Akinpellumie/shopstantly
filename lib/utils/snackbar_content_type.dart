
import 'package:flutter/cupertino.dart';

import 'app_colors.dart';

/// to handle failure, success, help and warning `ContentType` class is being used
class SnackbarContentType {
  /// message is `required` parameter
  final String message;

  /// color is optional, if provided null then `DefaultColors` will be used
  final Color? color;

  SnackbarContentType(this.message, [this.color]);

  static SnackbarContentType help = SnackbarContentType('help', kPrimaryAccentColor);
  static SnackbarContentType failure =
      SnackbarContentType('failure', kRedColor);
  static SnackbarContentType success =
      SnackbarContentType('success', kPrimaryColor);
  static SnackbarContentType warning =
      SnackbarContentType('warning', kYellowColor);
}
