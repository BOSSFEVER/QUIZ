import 'package:quiz/framework/framework.dart';
import 'package:quiz/menu/presentation/views/create_view.dart';
import 'package:quiz/menu/presentation/views/home_view.dart';
import 'package:quiz/menu/presentation/views/host_view.dart';
import 'package:quiz/menu/presentation/views/join_view.dart';
import 'package:quiz/menu/routes.dart';
import 'package:vrouter/vrouter.dart';

void init() {
  FrameworkRouter.addRoutes(
    [
      VWidget(
        path: Routes.home,
        widget: const HomeView(),
      ),
      VWidget(
        path: Routes.create,
        widget: const CreateView(),
      ),
      VWidget(
        path: Routes.host,
        widget: const HostView(),
      ),
      VWidget(
        path: Routes.join,
        widget: const JoinView(),
      ),
    ],
  );
}
