import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/second_screen',
              arguments: 'Hello from First Screen!',
            );
          },
          child: Hero(tag: 'button-hero', child: Text('Go to Second Screen')),
        ),
      ),
    );
  }
}
