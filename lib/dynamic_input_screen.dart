import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dynamic_screen.dart'; // Pastikan ini diimport

class DynamicInputScreen extends StatefulWidget {
  @override
  _DynamicInputScreenState createState() => _DynamicInputScreenState();
}

class _DynamicInputScreenState extends State<DynamicInputScreen> {
  final TextEditingController _controller = TextEditingController();
  PageController _pageController = PageController();
  List<Widget> dynamicScreens = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dynamic Input Screen')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter the number of screens to generate:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Number of Screens',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final int? count = int.tryParse(_controller.text);
                if (count != null && count > 0) {
                  setState(() {
                    dynamicScreens.clear(); // Clear previous screens
                    for (int i = 1; i <= count; i++) {
                      dynamicScreens.add(DynamicScreen(screenNumber: i));
                    }
                  });
                } else {
                  // Error handling for invalid input
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please enter a valid number!')),
                  );
                }
              },
              child: Text('Generate Screens'),
            ),
            SizedBox(height: 20),
            if (dynamicScreens.isNotEmpty) ...[
              Expanded(
                child: PageView(
                  controller: _pageController,
                  children: dynamicScreens,
                  onPageChanged: (index) {
                    // Error handling for navigating to non-existent screen
                    if (index >= dynamicScreens.length) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Invalid screen navigation!')),
                      );
                    }
                  },
                ),
              ),
              SizedBox(height: 20),
              SmoothPageIndicator(
                controller: _pageController,
                count: dynamicScreens.length,
                effect: WormEffect(), // Customize the effect here
              ),
            ],
          ],
        ),
      ),
    );
  }
}
