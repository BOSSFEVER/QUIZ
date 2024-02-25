import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/core/framework/top_bar/top_bar.dart';
import 'package:quiz/core/framework/top_bar/top_bar_cubit.dart';

class ScaffoldWrapper extends StatelessWidget {
  final Widget child;

  const ScaffoldWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopBarCubit, TopBarState>(
      builder: (context, state) {
        return Scaffold(
          appBar: state.visible ? TopBar() : null,
          body: child,
        );
      },
    );
  }
}
