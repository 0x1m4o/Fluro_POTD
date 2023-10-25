import 'package:fluro_potd/routes/app_routes.dart';
import 'package:fluro_potd/routes/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key) {
    configureRoutes(AppRouter.instance);
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      key: key,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      onGenerateRoute: AppRouter.instance.generator,
    );
  }
}
