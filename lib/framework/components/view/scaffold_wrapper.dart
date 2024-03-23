import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/framework/components/top_bar/top_bar.dart';
import 'package:quiz/framework/components/top_bar/top_bar_cubit.dart';

/// The sole and only purpose of this class is to hide or show the [TopBar] depending on the configuration.
class ScaffoldWrapper extends StatelessWidget {
  final Widget child;

  const ScaffoldWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopBarCubit, TopBarState>(
      builder: (context, state) {
        return Scaffold(
          appBar: state.visible ? const TopBar() : null,
          body: child,
        );
      },
    );
  }
}
