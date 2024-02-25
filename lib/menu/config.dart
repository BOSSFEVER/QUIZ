import 'package:quiz/framework/framework.dart';
import 'package:quiz/menu/presentation/views/home_view.dart';
import 'package:vrouter/vrouter.dart';

void init() {
  FrameworkRouter.addRoutes(
    [
      VWidget(
        path: "/home",
        widget: const HomeView(),
      ),
      VWidget(
        path: "/create",
        widget: const SimplePage(),
      ),
      VWidget(
        path: "/host",
        widget: Container(
          color: Colors.green.shade200,
          child: const Text("Hey"),
        ),
      ),
      VWidget(
        path: "/join",
        widget: Container(
          color: Colors.blue.shade200,
          child: const Text("Hey"),
        ),
      ),
    ],
  );
}

class SimplePage extends StatelessWidget {
  const SimplePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.get<TopBarApi>().update(
          title: "Create",
          visible: true,
          backButtonPath: "/home",
        );

    ;

    return Container(
      color: Colors.red.shade200,
      child: Builder(builder: (context) {
        WidgetsBinding.instance.addPostFrameCallback(
          (_) => showDialog(
              builder: (context) => Dialog(
                    child:
                        Container(color: Colors.red, width: 500, height: 400),
                  ),
              context: context),
        );
        return Text("Hey");
      }),
    );
  }
}
