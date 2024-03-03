import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../components/top_bar/top_bar_api.dart';
import '../components/top_bar/top_bar_cubit.dart';
import '../exceptions/stupid_developer_exception.dart';

extension ApiContextExtension on BuildContext {
  T get<T>() {
    if (T == TopBarApi) {
      return read<TopBarCubit>() as T;
    }
    throw StupidDeveloperException(
        "The API $T does not exist or is not registered");
  }
}
