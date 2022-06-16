import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../injection.dart';
import 'routes/router.gr.dart';
import 'styles/colors.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_AppWidgetState>()!.restartApp();
  }

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  Key key = UniqueKey();

  final router = getIt<MyRouter>();
  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: MaterialAppWidget(router: router),
    );
  }
}

class MaterialAppWidget extends StatelessWidget {
  const MaterialAppWidget({
    Key? key,
    required this.router,
  }) : super(key: key);

  final MyRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      title: 'CekCepat',
      theme: ThemeData.light().copyWith(
        primaryColor: primaryColor,
        primaryColorDark: primaryColor,
        backgroundColor: backgroundColor,
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
              color: primaryColor,
              iconTheme: ThemeData.light().iconTheme,
              systemOverlayStyle: SystemUiOverlayStyle.dark,
            ),
      ),
    );
  }
}
