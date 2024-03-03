import 'package:flutter/material.dart';
import 'package:quiz/framework/framework.dart';

import '../../config.dart';

class CreateView extends AbstractView {
  const CreateView({super.key})
      : super(
          title: "Create",
          showAppBar: true,
          backButtonPath: Routes.home,
        );

  @override
  Widget get desktop => Material(
        child: Container(
          color: Colors.green.shade200,
          child: const Text("WELCOME HERE TO CREATE A NEW BATTLE"),
        ),
      );

  @override
  Widget? get mobile => null;

  @override
  Widget? get tablet => null;
}
