import 'package:flutter/material.dart';
import 'package:quiz/framework/components/view/abstract_view.dart';

import '../widgets/home_view_button.dart';

class HomeView extends AbstractView {
  const HomeView({super.key})
      : super(
          title: "Somewhere",
          showAppBar: true,
        );

  @override
  Widget get desktop => const Material(
        child: Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                HomeViewButton(
                    name: "CREATE", color: Colors.greenAccent, to: "/create"),
                HomeViewButton(
                    name: "HOST", color: Colors.amberAccent, to: "/host"),
                HomeViewButton(
                    name: "JOIN", color: Colors.cyanAccent, to: "/join"),
              ]),
        ),
      );

  @override
  Widget? get mobile => null;

  @override
  Widget? get tablet => null;
}
