import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../routes/router.gr.dart';
import 'splash_widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _pushToHome();
    super.initState();
  }

  void _pushToHome() {
    Future.delayed(Duration(seconds: 1), () {
      context.router.push(HomePageRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SplashWidget();
  }
}


//?firmanmaulanaid
