import 'package:quiz/framework/framework.dart';
import 'package:quiz/menu/init.dart' as menu;

class QuizApplication extends Application {
  @override
  void init() {
    menu.init();
  }
}

void main() {
  QuizApplication();
}
