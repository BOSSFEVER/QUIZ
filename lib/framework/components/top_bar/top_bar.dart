import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/framework/components/top_bar/top_bar_cubit.dart';
import 'package:vrouter/vrouter.dart';

/// The TopBar is our highly customized AppBar, which can be changed by using the [TopBarApi] via the [BuildContext.get] method.
class TopBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopBarCubit, TopBarState>(
      builder: (BuildContext context, state) => AppBar(
        title: Text(state.title),
        leading: state.backButtonPath != null
            ? ElevatedButton(
                onPressed: () => context.vRouter.to(state.backButtonPath!),
                child: const Text("Back"),
              )
            : null,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
