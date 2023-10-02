import 'package:flutter/material.dart';
import 'package:name_route_app/routes/routes_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Screen 1'),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RoutesNavigation.screen1,
                  arguments: 'hello screen 1', //value
                );
              },
            ),
            ElevatedButton(
              child: const Text('Screen 2'),
              onPressed: () {
                Navigator.of(context).pushNamed(RoutesNavigation.screen2);
              },
            ),
          ],
        ),
      ),
    );
  }
}
