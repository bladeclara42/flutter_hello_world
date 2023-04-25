import 'package:flutter/material.dart';

import 'model/tourism_place.dart';

class ListItem extends StatelessWidget {
  final TourismPlace place;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;
  const ListItem({
    required this.place,
    required this.isDone,
    required this.onCheckboxClick,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 125,
      height: 250,
      child: Card(
        color: isDone ? Colors.pink[50] : Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
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
                    Expanded(
                      child: Text(
                        place.englishTitles,
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Checkbox(
                checkColor: Colors.pink,
                activeColor: Colors.white,
                value: isDone,
                onChanged: onCheckboxClick,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
