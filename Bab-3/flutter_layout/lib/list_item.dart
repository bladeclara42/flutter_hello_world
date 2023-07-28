import 'package:flutter/material.dart';

import 'model/tourism_place.dart';

class ListItem extends StatelessWidget {
  final TourismPlace place;
  final bool isDone;
  const ListItem({
    required this.place,
    required this.isDone,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDone ? Colors.white60 : Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.asset(place.imageAsset),
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
                    place.name,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(place.location),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
