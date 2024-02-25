import 'package:quiz/framework/framework.dart';
import 'package:quiz/menu/config.dart' as menu;

class QuizApplication extends Application {
  @override
  void init() {
    menu.init();
  }
}

void main() {
  QuizApplication();
}
