part of 'top_bar_cubit.dart';

@immutable
class TopBarState {
  final String title;
  final bool visible;
  final String? backButtonPath;

  const TopBarState({
    this.title = "[none]",
    this.visible = true,
    this.backButtonPath,
  });

  TopBarState copyWith({
    String? title,
    bool? visible,
    String? backButtonPath,
  }) {
    return TopBarState(
      title: title ?? this.title,
      visible: visible ?? this.visible,
      backButtonPath: backButtonPath,
    );
  }
}
