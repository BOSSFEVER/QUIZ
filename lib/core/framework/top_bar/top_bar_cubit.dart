import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'top_bar_state.dart';

class TopBarCubit extends Cubit<TopBarState> implements TopBarApi {
  TopBarCubit() : super(const TopBarState());

  @override
  void setTitle(String title) {
    emit(state.copyWith(title: title));
  }

  @override
  void setVisible(bool visible) {
    emit(state.copyWith(visible: visible));
  }

  @override
  void setBackButtonPath(String backButtonPath) {
    emit(state.copyWith(backButtonPath: backButtonPath));
  }

  @override
  void update({
    String? title,
    bool? visible,
    String? backButtonPath,
  }) {
    emit(TopBarState(
      title: title ?? state.title,
      visible: visible ?? state.visible,
      backButtonPath: backButtonPath,
    ));
  }
}

abstract class TopBarApi {
  void setTitle(String title);

  void setVisible(bool visible);

  void setBackButtonPath(String backButtonPath);

  void update({
    String? title,
    bool? visible,
    String? backButtonPath,
  });
}
