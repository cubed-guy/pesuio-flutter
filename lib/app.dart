import 'package:flutter/material.dart';
// import 'package:flutter_project/profile/profile.dart';

import 'landing/landing.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // Profile.routeName: (context) => Profile(),
        Landing.routeName: (context) => Landing(),
      },
    );
  }
}
