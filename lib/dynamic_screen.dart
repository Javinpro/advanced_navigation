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
            // Cek apakah bisa kembali sebelum memanggil Navigator.pop
            if (Navigator.canPop(context)) {
              Navigator.pop(context); // Swipe ke kanan untuk kembali
            } else {
              // Tampilkan pesan jika tidak ada halaman sebelumnya
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('No previous page to go back to!'),
                  duration: Duration(seconds: 2),
                ),
              );
            }
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
