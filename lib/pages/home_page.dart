import 'package:fluro/fluro.dart';
import 'package:fluro_potd/routes/app_routes.dart';
import 'package:fluro_potd/routes/arguments/profile_args.dart';
import 'package:fluro_potd/routes/router.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class HomePage extends StatelessWidget {
  static String username = 'Chandra';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              AppRouter.instance.navigateTo(
                context,
                AppRoutes.settings + username,
                replace: true,
              );
            },
            child: const Icon(Icons.settings)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                AppRouter.instance.navigateTo(context, AppRoutes.profile,
                    routeSettings: RouteSettings(
                        arguments: ProfilePageArgument(
                            1, "https://picsum.photos/200", username)));
              },
              child: const CircleAvatar(
                backgroundImage:
                    NetworkImage('https://picsum.photos/200', scale: 1),
              ),
            ),
          )
        ],
      ),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }
}
