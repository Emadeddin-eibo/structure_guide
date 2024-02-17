import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import 'failure.dart';

@singleton
class FailureController extends ChangeNotifier {
  Failure? _currentFailure;

  Failure? get currentFailure => _currentFailure;
  set currentFailure(Failure? failure) {
    _currentFailure = failure;

    if (kDebugMode) {
      print('Failure!! $failure');
    }
    notifyListeners();
  }

  void onFailureShown() {
    _currentFailure = null;
    notifyListeners();
  }

  bool get hasFailure => _currentFailure != null;
}
