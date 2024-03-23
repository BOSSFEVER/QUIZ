import 'package:flutter/material.dart';
import 'package:quiz/framework/api/api_injection.dart';
import 'package:quiz/framework/router/router.dart';
import 'package:quiz/framework/components/view/scaffold_wrapper.dart';
import 'package:vrouter/vrouter.dart';

class Start extends StatelessWidget {
  final ThemeData? themeData;
  final String title;

  const Start({
    super.key,
    this.themeData,
    required this.title,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ApiInjection(
      child: VRouter(
        initialUrl: FrameworkRouter.getInitialUrl(),
        routes: [
          VNester(
            path: null,
            nestedRoutes: FrameworkRouter.getRoutes(),
            widgetBuilder: (child) => ScaffoldWrapper(child: child),
          ),
        ],
        debugShowCheckedModeBanner: false,
        title: title,
        theme: themeData,
        transitionDuration: const Duration(milliseconds: 100),
        reverseTransitionDuration: const Duration(milliseconds: 100),
        buildTransition: (anim1, anim2, child) =>
            FadeTransition(opacity: anim1, child: child),
      ),
    );
  }
}
