import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'big_splash_button_state.dart';

class BigSplashButtonCubit extends Cubit<BigSplashButtonState> {
  BigSplashButtonCubit() : super(BigSplashButtonNormal());

  void onHover() => emit(BigSplashButtonHovered());

  void onNormal() => emit(BigSplashButtonNormal());
}
