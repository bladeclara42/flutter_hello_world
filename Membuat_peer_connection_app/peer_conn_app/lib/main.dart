import 'package:flutter/material.dart';
import 'package:peer_conn_app/home_page.dart';
import 'package:peer_conn_app/text_send_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        // '/voice_call': (context) => VoiceCallPage(),
        '/text_send': (context) => TextSendPage(),
        // '/camera': (context) => CameraPage(),
      },
    );
  }
}
