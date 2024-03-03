import 'package:flutter/material.dart';
import 'package:quiz/framework/framework.dart';

import '../../routes.dart';

class HostView extends AbstractView {
  const HostView({super.key})
      : super(
          title: "Host",
          showAppBar: true,
          backButtonPath: Routes.home,
        );

  @override
  Widget get desktop => Material(
        child: Container(
          color: Colors.blue.shade200,
          child: const Text(
              "WELCOME HERE TO HOST A BATTLE THAT WILL BE LEGENDARY"),
        ),
      );

  @override
  Widget? get mobile => null;

  @override
  Widget? get tablet => null;
}
