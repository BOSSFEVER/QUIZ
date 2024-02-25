import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/core/framework/scaffold_wrapper.dart';
import 'package:quiz/core/framework/top_bar/top_bar_cubit.dart';
import 'package:quiz/core/router.dart';
import 'package:vrouter/vrouter.dart';

import 'package:quiz/menu/config.dart' as menu;

void init() {
  menu.init();
}

void main() {
  init();

  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => TopBarCubit(),
      child: VRouter(
        builder: (context, child) => ScaffoldWrapper(child: child),
        initialUrl: "/home",
        routes: FrameworkRouter.getRoutes(),
        debugShowCheckedModeBanner: false,
        title: 'BOSSFEVER QUIZ',
        theme: ThemeData(
          colorScheme: const ColorScheme.dark().copyWith(
              background: const Color(0xFF191919),
              surface: const Color(0xFF262626)),
          useMaterial3: true,
        ),
        transitionDuration: const Duration(milliseconds: 100),
        reverseTransitionDuration: const Duration(seconds: 100),
        buildTransition: (anim1, anim2, child) =>
            FadeTransition(opacity: anim1, child: child),
      ),
    );
  }
}
