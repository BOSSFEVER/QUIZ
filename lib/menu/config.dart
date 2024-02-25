import 'package:quiz/framework/framework.dart';
import 'package:quiz/menu/presentation/views/create_view.dart';
import 'package:quiz/menu/presentation/views/home_view.dart';
import 'package:quiz/menu/presentation/views/host_view.dart';
import 'package:quiz/menu/presentation/views/join_view.dart';
import 'package:vrouter/vrouter.dart';

class Routes {
  static const String HOME = "/home";
  static const String CREATE = "/create";
  static const String JOIN = "/join";
  static const String HOST = "/host";
}

void init() {
  FrameworkRouter.addRoutes(
    [
      VWidget(
        path: Routes.HOME,
        widget: const HomeView(),
      ),
      VWidget(
        path: Routes.CREATE,
        widget: const CreateView(),
      ),
      VWidget(
        path: Routes.HOST,
        widget: const HostView(),
      ),
      VWidget(
        path: Routes.JOIN,
        widget: const JoinView(),
      ),
    ],
  );
}
