import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/top_bar/top_bar_cubit.dart';

class ApiInjection extends StatelessWidget {
  final Widget child;

  const ApiInjection({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => TopBarCubit(),
        ),
      ],
      child: child,
    );
  }
}
