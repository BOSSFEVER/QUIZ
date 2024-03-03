import 'package:flutter/material.dart';
import 'package:quiz/framework/api/api.dart';

import '../top_bar/top_bar_api.dart';

abstract class AbstractView extends StatelessWidget {
  Widget? get mobile;

  Widget? get tablet;

  Widget get desktop;

  final String? backButtonPath;

  final bool showAppBar;
  final String title;

  const AbstractView({
    required this.showAppBar,
    required this.title,
    required this.backButtonPath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.get<TopBarApi>().update(
          title: title,
          visible: showAppBar,
          backButtonPath: backButtonPath,
        );

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
