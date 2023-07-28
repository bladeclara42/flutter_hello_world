import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_management/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_management/detail_screen.dart';
import 'package:flutter_state_management/main_screen.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
        title: 'Contacts',
        theme: ThemeData(),
        home: MainScreen(),
      ),
    );
  }
}
