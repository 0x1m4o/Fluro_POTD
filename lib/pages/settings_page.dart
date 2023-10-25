// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fluro_potd/routes/app_routes.dart';
import 'package:fluro_potd/routes/router.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    Key? key,
    required this.username,
  }) : super(key: key);

  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Settings Page'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
                onTap: () {
                  AppRouter.instance
                      .navigateTo(context, AppRoutes.home, replace: true);
                },
                child: const Icon(Icons.home)),
          )
        ],
      ),
      body: const Center(
        child: Text('Settings'),
      ),
    );
  }
}
