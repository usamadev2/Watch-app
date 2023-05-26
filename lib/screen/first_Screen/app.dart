import 'package:flutter/material.dart';
import 'package:flutter_watch_app/screen/splash_screen/splash_screen.dart';

import 'home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.sRout: (context) => const SplashScreen(),
        HomeScreen.hRout: (context) => const HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.sRout,
    );
  }
}
