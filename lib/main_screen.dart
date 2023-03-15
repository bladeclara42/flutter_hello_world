import 'package:flutter/material.dart';
import 'package:flutter_hello_world/model/tourism_place.dart';
import 'package:flutter_hello_world/tourism_list.dart';
import 'package:flutter_hello_world/done_tourism_list.dart';

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
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DoneTourismList(
                  doneTourismPlaceList: doneTourismPlaceList,
                );
              }));
            },
          ),
        ],
      ),
      body: TourismList(doneTourismPlaceList: doneTourismPlaceList),
    );
  }
}
