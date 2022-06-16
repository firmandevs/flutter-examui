import 'package:auto_route/annotations.dart';
import 'package:examui/presentation/pages/course/course.dart';
import 'package:examui/presentation/pages/home/home.dart';

import '../pages/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: HomePage),
    MaterialRoute(page: CoursePage),
  ],
)
class $MyRouter {}
