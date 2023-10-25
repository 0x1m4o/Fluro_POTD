// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:fluro_potd/routes/arguments/profile_args.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key, required this.profilePageArgument}) : super(key: key);

  ProfilePageArgument profilePageArgument;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: Center(
        // child: Text(username),
        child: Column(
          children: [
            Container(
                width: 300,
                height: 300,
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            NetworkImage(profilePageArgument.profileImage)))),
            Text(
              profilePageArgument.username,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
