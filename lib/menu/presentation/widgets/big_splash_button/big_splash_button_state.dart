part of 'big_splash_button_cubit.dart';

@immutable
abstract class BigSplashButtonState {
  bool isHovered();
}

class BigSplashButtonNormal extends BigSplashButtonState {
  @override
  bool isHovered() => false;
}

class BigSplashButtonHovered extends BigSplashButtonState {
  @override
  bool isHovered() => true;
}
