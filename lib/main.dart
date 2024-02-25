import 'package:quiz/framework/framework.dart';
import 'package:quiz/menu/config.dart' as menu;

class QuizApplication extends Application {
  @override
  void exit() {
    menu.init();
  }

  @override
  void init() {}
}

void main() {
  QuizApplication();
}
