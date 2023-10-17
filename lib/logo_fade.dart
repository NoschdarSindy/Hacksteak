import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubits/logo_fade_cubit.dart';

class LogoFade extends StatelessWidget {
  const LogoFade({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogoFadeCubit(),
      child: LogoFadeView(),
    );
  }
}

class LogoFadeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        BlocBuilder<LogoFadeCubit, double>(
          builder: (context, opacityLevel) {
            return AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 3),
              child: const FlutterLogo(),
            );
          },
        ),
        ElevatedButton(
          onPressed: () {
            context.read<LogoFadeCubit>().changeOpacity(0.5);
          },
          child: const Text('Fade Logo'),
        ),
      ],
    );
  }
}
