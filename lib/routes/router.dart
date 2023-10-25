import 'package:fluro/fluro.dart';
import 'app_routes.dart';
import 'routes_handler.dart';

class AppRouter {
  static FluroRouter instance = FluroRouter();
}

void configureRoutes(FluroRouter router) {
  // Splash
  router.define(AppRoutes.splash, handler: splashHandler);

  // Home
  router.define(AppRoutes.home, handler: homeHandler);

  // Profile
  router.define(AppRoutes.profile, handler: profileHandler);

  // Settings
  router.define(AppRoutes.settings, handler: settingsHandler);
}
