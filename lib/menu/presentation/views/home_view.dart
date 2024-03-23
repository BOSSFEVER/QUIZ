import 'package:flutter/material.dart';
import 'package:quiz/framework/framework.dart';
import 'package:quiz/menu/routes.dart';

import '../widgets/big_splash_button/big_splash_button.dart';

class HomeView extends AbstractView {
  const HomeView({super.key})
      : super(
          title: "Home",
          showAppBar: true,
          backButtonPath: null,
        );

  @override
  Widget get desktop => Material(
        child: Builder(builder: (context) {
          return const Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  BigSplashButton(
                      name: "CREATE",
                      color: Colors.greenAccent,
                      to: Routes.create),
                  BigSplashButton(
                      name: "HOST", color: Colors.amberAccent, to: Routes.host),
                  BigSplashButton(
                      name: "JOIN", color: Colors.cyanAccent, to: Routes.join),
                ]),
          );
        }),
      );

  @override
  Widget? get mobile => null;

  @override
  Widget? get tablet => null;
}
