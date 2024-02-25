import 'package:quiz/core/exceptions/stupid_developer_exception.dart';
import 'package:vrouter/vrouter.dart';

class FrameworkRouter {
  static List<VRouteElement> routes = <VRouteElement>[];
  static bool done = false;

  static addRoutes(List<VRouteElement> routes) {
    if (done) {
      throw StupidDeveloperException(
          "Do not create routes after the app is loaded");
    }
    FrameworkRouter.routes.addAll(routes);
  }

  static List<VRouteElement> getRoutes() {
    done = true;
    return routes;
  }
}
