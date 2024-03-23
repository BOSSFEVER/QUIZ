import 'package:flutter/material.dart';
import 'package:quiz/framework/exceptions/stupid_developer_exception.dart';

class FrameworkPopup {
  static final List<BuildContext> _contexts = <BuildContext>[];

  static void show({
    required BuildContext context,
    required Widget Function(BuildContext) builder,
  }) {
    _contexts.add(context);

    showGeneralDialog(
      context: context,
      pageBuilder: (bc, _, __) => builder(bc),
      barrierDismissible: true,
      barrierLabel: "background",
      transitionDuration: const Duration(milliseconds: 100),
    );
  }

  static void pop() {
    if (_contexts.isEmpty) {
      throw StupidDeveloperException(
          "FrameworkPopup.pop() called but there is no active popup to pop");
    }

    Navigator.of(_contexts.removeLast()).pop();
  }
}
