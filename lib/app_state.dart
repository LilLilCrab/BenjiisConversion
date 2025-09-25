import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  /// Tracks whether or not the user is converting from Farenheit to Celsius
  /// (true) or Celsius to Farenheitht (false).
  bool _convertFToC = false;
  bool get convertFToC => _convertFToC;
  set convertFToC(bool value) {
    _convertFToC = value;
  }
}
