import 'package:flutter/material.dart';

class DynamicScreen extends StatelessWidget {
  final int screenNumber;

  DynamicScreen({required this.screenNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dynamic Screen $screenNumber')),
      body: GestureDetector(
        onHorizontalDragEnd: (details) {
          if (details.velocity.pixelsPerSecond.dx > 0) {
            Navigator.pop(context); // Swipe ke kanan untuk kembali
          }
        },
        child: Center(
          child: Text(
            'This is Dynamic Screen $screenNumber',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
