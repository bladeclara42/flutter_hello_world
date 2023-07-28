import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/voice_call');
              },
              child: Text('Voice Call'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/text_send');
              },
              child: Text('Text Send'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/camera');
              },
              child: Text('Camera'),
            ),
          ],
        ),
      ),
    );
  }
}
