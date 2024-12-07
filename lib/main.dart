import 'package:advanced_navigations/dynamic_input_screen.dart';
import 'package:flutter/material.dart';
import 'section_navigator.dart';
import 'third_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bottom Navigation',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _sections = [
    SectionNavigator(),
    ThirdScreen(),
    DynamicInputScreen(),
    Scaffold(
      appBar: AppBar(title: Text('Placeholder for Section 3')),
      body: Center(child: Text('This is Section 3')),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _sections[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Section 1'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Section 2'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Section 3',
          ),
        ],
      ),
    );
  }
}
