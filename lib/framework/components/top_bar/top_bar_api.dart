part of 'package:quiz/framework/framework.dart';

abstract class TopBarApi {
  void setTitle(String title);

  void setVisible(bool visible);

  void setBackButtonPath(String backButtonPath);

  void update({
    String? title,
    bool? visible,
    String? backButtonPath,
  });
}
