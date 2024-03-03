import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/framework/components/top_bar/top_bar_api.dart';

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
