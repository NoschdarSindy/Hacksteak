import 'dart:io';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:hacksteak/constants.dart';
import 'package:hacksteak/cubits/active_story_cubit.dart';
import 'package:hacksteak/cubits/prefs/prefs_service.dart';
import 'package:hacksteak/data/api/hn/lib/api.dart';
import 'package:hacksteak/pages/home_page.dart';
import 'package:hacksteak/pages/item_page.dart';
import 'package:hacksteak/pages/settings/settings.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import 'cubits/logo_fade_cubit.dart';
import 'cubits/prefs/history/history_cubit.dart';
import 'cubits/prefs/settings/settings_cubit.dart';

const title = "Hacksteak";

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'settings',
          builder: (BuildContext context, GoRouterState state) {
            return const SettingsPage();
          },
        ),
        // GoRoute(
        //     path: 'item/:itemId',
        //     builder: (BuildContext context, GoRouterState state) {
        //       return ItemPage(
        //         id: int.parse(state.pathParameters['itemId']!),
        //       );
        //     }),
        GoRoute(
          name: 'item',
          path: 'item/:itemId',
          builder: (BuildContext context, GoRouterState state) {
            return ItemPage(
                id: int.parse(state.pathParameters['itemId']!),
                showCommentsFirst: state.extra != null
                    ? (state.extra as Map<String, bool>)['showCommentsFirst'] ??
                        false
                    : false);
          },
        ),
      ],
    ),
  ],
);

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();

  GetIt.I.registerSingleton<PrefsService>(await PrefsService.getInstance());
  GetIt.I.registerSingleton<HnApi>(HnApi());

  runApp(const AppFrame());
}

class AppFrame extends StatelessWidget {
  const AppFrame({super.key});

  @override
  Widget build(context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(360, 640),
      builder: (context, child) => MultiBlocProvider(providers: [
        BlocProvider(create: (context) => SettingsCubit()),
        BlocProvider(create: (context) => ActiveItemCubit()),
        BlocProvider(create: (context) => HistoryCubit()),
        BlocProvider(create: (context) => BackgroundOpacityCubit()),
      ], child: const App()),
    );
  }
}

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final prefs = context.watch<SettingsCubit>().state;

    adjustedTheme(ThemeData theme) {
      return theme.copyWith(
          textTheme: theme.textTheme
              .apply(fontSizeFactor: 1.spMin.clamp(1, double.infinity)));
    }

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: title,
      builder: (context, widget) =>
          ResponsiveBreakpoints.builder(child: widget!, breakpoints: [
        const Breakpoint(start: 0, end: 450, name: XS),
        const Breakpoint(start: 451, end: 650, name: S),
        const Breakpoint(start: 651, end: 960, name: M),
        const Breakpoint(start: 961, end: 1200, name: L),
        const Breakpoint(start: 1201, end: 1920, name: XL),
        const Breakpoint(start: 1921, end: double.infinity, name: XXL),
      ]),
      theme: adjustedTheme(FlexThemeData.light(scheme: prefs.theme.scheme)),
      darkTheme: adjustedTheme(FlexThemeData.dark(scheme: prefs.theme.scheme)),
      themeMode: prefs.theme.themeMode,
      // home: Home(),
      routerConfig: _router,
    );
  }
}
