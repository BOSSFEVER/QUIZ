import 'package:flutter/material.dart';
import 'package:quiz/framework/framework.dart';

import '../widgets/big_splash_button/big_splash_button.dart';

class HomeView extends AbstractView {
  const HomeView({super.key})
      : super(
          title: "Home",
          showAppBar: true,
          backButtonPath: null,
        );

  @override
  Widget get desktop => const Material(
        child: Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                BigSplashButton(
                    name: "CREATE", color: Colors.greenAccent, to: "/create"),
                BigSplashButton(
                    name: "HOST", color: Colors.amberAccent, to: "/host"),
                BigSplashButton(
                    name: "JOIN", color: Colors.cyanAccent, to: "/join"),
              ]),
        ),
      );

  @override
  Widget? get mobile => null;

  @override
  Widget? get tablet => null;
}
