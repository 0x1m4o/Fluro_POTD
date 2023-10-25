import 'package:fluro/fluro.dart';
import 'package:fluro_potd/pages/home_page.dart';
import 'package:fluro_potd/pages/settings_page.dart';
import 'package:fluro_potd/pages/splash_page.dart';
import 'package:fluro_potd/pages/profile_page.dart';
import 'package:fluro_potd/routes/arguments/profile_args.dart';

// Splash Page
Handler splashHandler = Handler(
  handlerFunc: (context, parameters) => const SplashPage(),
);

// Home Page
Handler homeHandler = Handler(
  handlerFunc: (context, parameters) => const HomePage(),
);

// Setings Page
Handler settingsHandler = Handler(
  handlerFunc: (context, parameters) =>
      SettingsPage(username: parameters['username']?[0] ?? 'guest'),
);

// Profile Page With Custom Class
Handler profileHandler = Handler(
  handlerFunc: (context, parameters) {
    ProfilePageArgument args =
        context?.settings?.arguments as ProfilePageArgument;

    return ProfilePage(profilePageArgument: args);
  },
);
