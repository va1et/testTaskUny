import 'package:auto_route/auto_route.dart';

import '../screens/profile_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [
    AutoRoute(path: '/', page: ProfileScreen, initial: true),
    RedirectRoute(path: '*', redirectTo: '/')
  ],
)
class $AppRouter {}
