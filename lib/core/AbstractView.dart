import 'package:flutter/material.dart';

class AbstractView extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  final bool appBar;

  const AbstractView({
    super.key,
    this.mobile = const Placeholder(child: Text("PLACEHOLDER")),
    this.tablet = const Placeholder(child: Text("PLACEHOLDER")),
    required this.desktop,
    this.appBar = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar
          ? AppBar(
              title: const Text("Something is here"),
            )
          : null,
      body: desktop,
    );
  }
}
