import 'package:flutter/material.dart';
import 'package:flutter_layout/model/tourism_place.dart';
import 'package:flutter_layout/tourism_list.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<TourismPlace> doneTourismPlaceList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tempat Wisata'),
      ),
      body: TourismList(),
    );
  }
}
