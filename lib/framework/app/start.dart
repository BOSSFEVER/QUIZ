import 'package:flutter/material.dart';
import 'package:quiz/framework/api/api_injection.dart';
import 'package:quiz/framework/router/router.dart';
import 'package:quiz/framework/components/view/scaffold_wrapper.dart';
import 'package:vrouter/vrouter.dart';

class Start extends StatelessWidget {
  const Start({super.key});

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
        title: 'BOSSFEVER QUIZ',
        theme: ThemeData(
          colorScheme: const ColorScheme.dark().copyWith(
              background: const Color(0xFF191919),
              surface: const Color(0xFF262626)),
          useMaterial3: true,
        ),
        transitionDuration: const Duration(milliseconds: 100),
        reverseTransitionDuration: const Duration(milliseconds: 100),
        buildTransition: (anim1, anim2, child) =>
            FadeTransition(opacity: anim1, child: child),
      ),
    );
  }
}
