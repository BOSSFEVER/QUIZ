part of 'package:quiz/framework/framework.dart';

/// Extend this class and implement the [init] and [exit] methods.
/// After that, instantiate this class `Application()` and the app will start.
abstract class Application {
  Application() {
    start();
  }

  /// This method is run before the app starts.
  void init();

  void start() {
    init();

    runApp(const Start());
  }
}
