import 'package:flutter/material.dart';

import './routes/routes_navigation.dart';
import './screens/home_screen.dart';
import './screens/screen_1.dart';
import './screens/screen_2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: HomeScreen(),
      initialRoute: RoutesNavigation.homeScreen,
      routes: {
        RoutesNavigation.homeScreen: (context) => const HomeScreen(),
        RoutesNavigation.screen1: (context) => const Screen1(),
        RoutesNavigation.screen2: (context) => const Screen2(),
      },
    );
  }
}
