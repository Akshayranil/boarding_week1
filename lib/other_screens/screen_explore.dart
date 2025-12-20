import 'package:flutter/material.dart';

class ScreenExplore extends StatelessWidget {
  const ScreenExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore Screen'),
      ),
      body: Center(
        child: Text('Expore Page'),
      ),
    );
  }
}