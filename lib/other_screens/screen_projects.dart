import 'package:flutter/material.dart';

class ScreenProjects extends StatelessWidget {
  const ScreenProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Project Screen'),
      ),
      body: Center(
        child: Text('Projects Page'),
      ),
    );
  }
}