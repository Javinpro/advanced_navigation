import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String message;

  SecondScreen({required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Hero(
          tag: 'button-hero',
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Back to First Screen'),
          ),
        ),
      ),
    );
  }
}
