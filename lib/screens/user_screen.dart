import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  static String routerName = '/users';

  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('UsersScreen'),
      ),
    );
  }
}
