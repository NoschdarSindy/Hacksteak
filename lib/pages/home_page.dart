import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../app_bar.dart';
import '../body.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setApplicationSwitcherDescription(
        ApplicationSwitcherDescription(
      label: "Hacksteak",
    ));

    return LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
        child: Scaffold(
          body: Container(
              color: Theme.of(context).secondaryHeaderColor,
              child: NestedScrollView(
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) =>
                          [const MyAppBar()],
                  body: const Body())),
        ),
      );
    });
  }
}
