part of 'home_view_button_cubit.dart';

@immutable
abstract class HomeViewButtonState {
  bool isHovered();
}

class HomeViewButtonNormal extends HomeViewButtonState {
  @override
  bool isHovered() => false;
}

class HomeViewButtonHovered extends HomeViewButtonState {
  @override
  bool isHovered() => true;
}
