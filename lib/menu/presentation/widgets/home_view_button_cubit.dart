import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_view_button_state.dart';

class HomeViewButtonCubit extends Cubit<HomeViewButtonState> {
  HomeViewButtonCubit() : super(HomeViewButtonNormal());

  void onHover() => emit(HomeViewButtonHovered());

  void onNormal() => emit(HomeViewButtonNormal());
}
