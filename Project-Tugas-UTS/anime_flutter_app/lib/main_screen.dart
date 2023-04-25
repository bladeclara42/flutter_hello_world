import 'package:flutter/material.dart';
import 'package:anime_flutter_app/model/tourism_place.dart';
import 'package:anime_flutter_app/tourism_list.dart';
import 'package:anime_flutter_app/done_tourism_list.dart';
import 'package:anime_flutter_app/provider/done_tourism_provider.dart';
import 'main.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<TourismPlace> doneTourismPlaceList = [];
  late Color _primaryColor;

  @override
  void initState() {
    super.initState();
    _primaryColor = MyApp.primaryColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anime App'),
        backgroundColor: _primaryColor,
      ),
      body: TourismList(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: _primaryColor,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const DoneTourismList();
          }));
        },
        child: Icon(
          Icons.favorite,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
