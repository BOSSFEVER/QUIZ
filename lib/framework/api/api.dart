part of 'package:quiz/framework/framework.dart';

extension ApiContextExtension on BuildContext {
  T get<T>() {
    if (T == TopBarApi) {
      return read<TopBarCubit>() as T;
    }
    throw StupidDeveloperException(
        "The API $T does not exist or is not registered");
  }
}
