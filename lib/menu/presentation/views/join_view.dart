import 'package:quiz/framework/framework.dart';

import '../../config.dart';

class JoinView extends AbstractView {
  const JoinView({super.key})
      : super(
          title: "Join",
          showAppBar: true,
          backButtonPath: Routes.home,
        );

  @override
  Widget get desktop => Material(
        child: Container(
          color: Colors.blue.shade200,
          child: const Text("JOIN A LEGENDARY BATTLE HERE"),
        ),
      );

  @override
  Widget? get mobile => null;

  @override
  Widget? get tablet => null;
}
