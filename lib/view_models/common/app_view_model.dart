import 'package:flutter/material.dart';
import 'package:is_first_run/is_first_run.dart';

class AppViewModel extends ChangeNotifier {
  AppViewModel() {
    _checkFirstRun().then((value) => null);
    // SharedPrefs.getString("user", "{}").then((value) {
    //   User _userVal = User.fromJson(jsonDecode(value));
    //   user = _userVal;
    // });
  }

  bool _isFirstRun = false;
  bool get isFirstRun => _isFirstRun;
  void setIsFirstRun(bool val) {
    _isFirstRun = val;
    notifyListeners();
  }

  Future<bool> _checkFirstRun() async {
    bool ifr = await IsFirstRun.isFirstRun();
    setIsFirstRun(ifr);
    return ifr;
  }
}
