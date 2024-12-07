import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';

class SectionNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/first_screen',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/first_screen':
            return MaterialPageRoute(builder: (context) => FirstScreen());
          case '/second_screen':
            return PageRouteBuilder(
              pageBuilder:
                  (context, animation, secondaryAnimation) =>
                      SecondScreen(message: settings.arguments as String),
              transitionsBuilder: (
                context,
                animation,
                secondaryAnimation,
                child,
              ) {
                return FadeTransition(opacity: animation, child: child);
              },
            );
          default:
            return MaterialPageRoute(
              builder:
                  (context) =>
                      Scaffold(body: Center(child: Text('Screen not found'))),
            );
        }
      },
    );
  }
}
