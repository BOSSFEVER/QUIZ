import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vrouter/vrouter.dart';

import 'home_view_button_cubit.dart';

class HomeViewButton extends StatelessWidget {
  final String name;
  final Color color;
  final String to;

  const HomeViewButton(
      {super.key, required this.name, required this.color, required this.to});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: BlocProvider(
        create: (context) => HomeViewButtonCubit(),
        child: BlocBuilder<HomeViewButtonCubit, HomeViewButtonState>(
          builder: (context, state) => InkWell(
            onHover: (hovering) => hovering
                ? context.read<HomeViewButtonCubit>().onHover()
                : context.read<HomeViewButtonCubit>().onNormal(),
            onTap: () => context.vRouter.to(to),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOutQuint,
              height: 650,
              width: 450,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                border: Border.all(
                  color:
                      state.isHovered() ? Colors.white : Colors.cyan.shade700,
                  style: BorderStyle.solid,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  width: 16,
                ),
                boxShadow: [
                  BoxShadow(
                    color:
                        state.isHovered() ? Colors.white : Colors.cyan.shade400,
                    blurRadius: state.isHovered() ? 32 : 4,
                    spreadRadius: state.isHovered() ? 4 : 2,
                    blurStyle: BlurStyle.normal,
                  ),
                  BoxShadow(
                    color: state.isHovered()
                        ? Colors.cyan.shade100
                        : Colors.cyan.shade500,
                  ),
                  BoxShadow(
                    color: state.isHovered()
                        ? Colors.cyan.shade300
                        : Colors.cyan.shade400,
                    spreadRadius: state.isHovered() ? -24 : -12,
                    blurRadius: state.isHovered() ? 128 : 32,
                  ),
                ],
              ),
              child: Align(
                alignment: const FractionalOffset(0.5, 0.8),
                child: Text(name,
                    style: TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                        color:
                            state.isHovered() ? Colors.white : Colors.black)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
