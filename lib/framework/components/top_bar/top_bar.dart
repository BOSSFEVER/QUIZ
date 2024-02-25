import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/framework/components/top_bar/top_bar_cubit.dart';
import 'package:quiz/framework/components/top_bar/widgets/clock.dart';
import 'package:vrouter/vrouter.dart';

/// The TopBar is our highly customized AppBar, which can be changed by using the [TopBarApi] via the [BuildContext.get] method.
class TopBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopBarCubit, TopBarState>(
      builder: (BuildContext context, state) => AppBar(
        title: Text(state.title),
        leading: state.backButtonPath != null
            ? BackButton(
                onPressed: () => context.vRouter.to(state.backButtonPath!),
              )
            : null,
        actions: <Widget>[
          Clock(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
