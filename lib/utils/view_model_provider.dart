import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../view_models/auth/otp_view_model.dart';
import '../view_models/auth/register_view_model.dart';

List<SingleChildWidget> viewModelProviders = [
  ChangeNotifierProvider(
    create: (_) => RegisterViewModel(),
  ),
  ChangeNotifierProvider(
    create: (_) => OtpViewModel(),
  ),
];
