import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:anime_full_flutter/models/top_anime.dart';

class DebugPage extends StatefulWidget {
  @override
  _DebugPageState createState() => _DebugPageState();
}

class _DebugPageState extends State<DebugPage> {
  String _resultText = '';

  @override
  void initState() {
    super.initState();
    _fetchTopAnime(); // Fetch top anime
  }

  Future<void> _fetchTopAnime() async {
    final url = Uri.parse(
        'https://api.animethemes.moe/anime?filter[year-gt]=2020&page[size]=1&page[number]=6&include=animethemes.animethemeentries.videos,images');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final topAnimeData = data['data'] as List<dynamic>;

      final topAnimeList =
          topAnimeData.map((anime) => TopAnime.fromJson(anime)).toList();

      setState(() {
        _resultText = json.encode(topAnimeList);
      });
    } else {
      setState(() {
        _resultText = 'Error fetching top anime';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Debug Page'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              _resultText,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
