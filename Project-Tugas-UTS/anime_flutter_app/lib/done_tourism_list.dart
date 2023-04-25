import 'package:flutter/material.dart';
import 'package:anime_flutter_app/model/tourism_place.dart';
import 'package:anime_flutter_app/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';
import 'main.dart';
import 'model/tourism_place.dart';

class DoneTourismList extends StatefulWidget {
  const DoneTourismList({Key? key}) : super(key: key);

  @override
  _DoneTourismListState createState() => _DoneTourismListState();
}

class _DoneTourismListState extends State<DoneTourismList> {
  late Color _primaryColor;

  @override
  void initState() {
    super.initState();
    _primaryColor = MyApp.primaryColor;
  }

  @override
  Widget build(BuildContext context) {
    final List<TourismPlace> doneTourismPlaceList =
        Provider.of<DoneTourismProvider>(
      context,
      listen: false,
    ).doneTourismPlaceList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Anime yang disukai'),
        backgroundColor: _primaryColor,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = doneTourismPlaceList[index];
          return Card(
            color: Colors.white60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.network(place.imageUrl),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          place.englishTitles,
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          place.japaneseTitles,
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          place.episodes,
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          place.status,
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          place.genres,
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                      ],
                    ),
                  ),
                ),
                const Icon(
                  Icons.favorite,
                  color: Colors.pink,
                ),
              ],
            ),
          );
        },
        itemCount: doneTourismPlaceList.length,
      ),
    );
  }
}
