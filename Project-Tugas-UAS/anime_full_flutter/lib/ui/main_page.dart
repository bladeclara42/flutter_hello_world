import 'package:flutter/material.dart';
import 'package:anime_full_flutter/api/jikan_api.dart';
import 'package:anime_full_flutter/models/top_anime.dart' as AnimeModel;
import 'package:anime_full_flutter/ui/detailed_page.dart';

class MainPage extends StatefulWidget {
  final String email;
  final String username;
  final int id;
  final Color primaryColor;

  const MainPage({
    Key? key,
    required this.email,
    required this.username,
    required this.id,
    required this.primaryColor,
  }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool _isFetching = false;
  List<AnimeModel.TopAnime> _topAnimeList = [];

  Future<void> _fetchTopAnime() async {
    setState(() {
      _isFetching = true;
    });

    try {
      final topAnimeList = await JikanApiService.getTopAnime();
      setState(() {
        _topAnimeList = topAnimeList;
      });
    } catch (e) {
      setState(() {
        _topAnimeList = [];
      });
    } finally {
      setState(() {
        _isFetching = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, ${widget.username}'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
        backgroundColor: widget.primaryColor,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              _fetchTopAnime();
            },
            child: Text('Fetch Top Anime'),
            style: ElevatedButton.styleFrom(
              backgroundColor: widget.primaryColor,
            ),
          ),
          Expanded(
            child: _buildTopAnimeList(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(
            context,
            '/search',
            arguments: {
              'id': widget.id,
              'email': widget.email,
              'username': widget.username,
            },
          );
        },
        child: Icon(Icons.search),
        backgroundColor: widget.primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildTopAnimeList() {
    if (_isFetching) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (_topAnimeList.isEmpty) {
      return Center(
        child: Text('No top anime found.'),
      );
    } else {
      return ListView.builder(
        itemCount: (_topAnimeList.length / 3).ceil(),
        itemBuilder: (context, index) {
          final startIndex = index * 3;
          final endIndex = startIndex + 3 > _topAnimeList.length
              ? _topAnimeList.length
              : startIndex + 3;
          final animeList = _topAnimeList.sublist(startIndex, endIndex);

          return Container(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: animeList.map((anime) {
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailedPage(
                            email: widget.email,
                            username: widget.username,
                            id: widget.id,
                            primaryColor: widget.primaryColor,
                            malId: anime.malId,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    anime.images?['jpg']?.imageUrl ?? ''),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(anime.title, style: TextStyle(fontSize: 16.0)),
                          SizedBox(height: 4.0),
                          Text(anime.type ?? ''),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          );
        },
      );
    }
  }
}
