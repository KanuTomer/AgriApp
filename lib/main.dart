import 'package:flutter/material.dart';
import 'screens/homepage.dart';

void main() {
  runApp(const AgriApp());
}

class AgriApp extends StatelessWidget {
  const AgriApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AgriApp',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const HomePage(),
      routes: {
        '/marketplace': (context) => const PlaceholderWidget('Marketplace'),
        '/advisory': (context) => const PlaceholderWidget('Advisory'),
        '/more': (context) => const PlaceholderWidget('More'),
      },
    );
  }
}

// Placeholder for other pages
class PlaceholderWidget extends StatelessWidget {
  final String title;
  const PlaceholderWidget(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('$title Page Coming Soon!')),
    );
  }
}
