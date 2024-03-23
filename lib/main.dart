import 'package:quiz/framework/framework.dart';
import 'package:quiz/menu/init.dart' as menu;
import 'package:quiz/theme/boring_theme.dart';

class QuizApplication extends Application {
  QuizApplication()
      : super(
          title: "bf quiz",
          themeData: boringTheme,
        );

  @override
  void init() {
    menu.init();
  }
}

void main() {
  QuizApplication();
}
