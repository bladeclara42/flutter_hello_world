import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:anime_flutter_app/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';
import 'package:anime_flutter_app/detail_screen.dart';
import 'package:anime_flutter_app/main_screen.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const primaryColor = Color(0xFFFF2889);
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
        title: 'Contacts',
        theme: ThemeData(
          primaryColor: primaryColor,
        ),
        home: MainScreen(),
      ),
    );
  }
}
