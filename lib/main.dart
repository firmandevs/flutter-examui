import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';
import 'presentation/app_widget.dart';
import 'presentation/routes/router.gr.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  getIt.registerSingleton<MyRouter>(MyRouter());
  configureInjection(Environment.prod);
  runApp(const AppWidget());
}
