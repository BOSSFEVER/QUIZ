import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/core/exceptions/stupid_developer_exception.dart';
import 'package:quiz/core/framework/top_bar/top_bar_cubit.dart';

extension MyNavigationExtension on BuildContext {
  T get<T>() {
    if (T == TopBarApi) {
      return read<TopBarCubit>() as T;
    }
    throw StupidDeveloperException(
        "The API $T does not exist or is not registered");
  }
}
