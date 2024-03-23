import 'package:flutter/material.dart';
import 'package:quiz/framework/app/start.dart';

/// Extend this class and implement the [init] and [exit] methods.
/// After that, instantiate this class `Application()` and the app will start.
abstract class Application {
  final ThemeData? themeData;
  final String title;

  Application({
    this.themeData,
    required this.title,
  }) {
    _start();
  }

  /// This method is run before the app starts.
  void init();

  void _start() {
    init();

    runApp(Start(
      title: title,
      themeData: themeData,
    ));
  }
}
