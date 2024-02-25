import 'package:flutter/material.dart';

abstract class AbstractView extends StatelessWidget {
  Widget? get mobile;

  Widget? get tablet;

  Widget get desktop;

  final bool showAppBar;
  final String title;

  const AbstractView({
    required this.showAppBar,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600 && mobile != null) {
          return mobile!;
        } else if (constraints.maxWidth < 1200 && tablet != null) {
          return tablet!;
        } else {
          return desktop;
        }
      },
    );
  }
}
