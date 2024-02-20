import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:quiz/core/AbstractView.dart';

import 'package:quiz/menu/presentation/views/HomeView.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return child;
      },
      routes: [
        GoRoute(
            path: '/',
            builder: (context, state) => const HomeView(),
            routes: [
              GoRoute(
                path: 'create',
                builder: (context, state) => AbstractView(
                  desktop: Material(child: const Text("Hey Boy")),
                  appBar: true,
                ),
              ),
              GoRoute(
                path: 'play',
                builder: (context, state) => const Placeholder(),
              ),
              GoRoute(
                path: 'join',
                builder: (context, state) => const Placeholder(),
              ),
              GoRoute(
                path: 'settings',
                builder: (context, state) => const Placeholder(),
              ),
            ]),
      ],
    )
  ],
);
