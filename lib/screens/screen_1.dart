import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    // variable value from home screen
    final parameter = ModalRoute.of(context)!.settings.arguments as String;
    //..
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: Center(
        child: Text(parameter),
      ),
    );
  }
}
