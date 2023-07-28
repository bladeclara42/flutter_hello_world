import 'package:flutter/material.dart';
import 'package:anime_full_flutter/api/jikan_api.dart';
import 'package:anime_full_flutter/models/search.dart' as AnimeModel;

class SearchPage extends StatefulWidget {
  final String email;
  final String username;
  final int id;
  final Color primaryColor;

  const SearchPage({
    Key? key,
    required this.email,
    required this.username,
    required this.id,
    required this.primaryColor,
  }) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  List<AnimeModel.Search> _searchResults = [];
  bool _isSearching = false;

  Future<void> _performSearch(String query) async {
    setState(() {
      _isSearching = true;
      _searchResults.clear();
    });

    try {
      final results = await JikanApiService.searchAnime(query);
      setState(() {
        _searchResults = results;
      });
    } catch (e) {
      print('Error searching anime: $e');
    } finally {
      setState(() {
        _isSearching = false;
      });
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, ${widget.username}'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(
              context,
              '/main',
              arguments: {
                'id': widget.id,
                'email': widget.email,
                'username': widget.username,
              },
            );
          },
        ),
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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      decoration: CustomInputDecoration.getTextFieldDecoration(
                        labelText: 'Search Anime',
                        primaryColor: widget.primaryColor,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    color: widget.primaryColor,
                    onPressed: () {
                      String query = _searchController.text.trim();
                      if (query.isNotEmpty) {
                        _performSearch(query);
                      }
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: _buildSearchResults(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchResults() {
    if (_isSearching) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (_searchResults.isEmpty) {
      return Center(
        child: Text('No results found.'),
      );
    } else {
      return ListView.builder(
        itemCount: _searchResults.length,
        itemBuilder: (context, index) {
          AnimeModel.Search anime = _searchResults[index];
          return GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(
                context,
                '/detailed',
                arguments: {
                  'id': widget.id,
                  'email': widget.email,
                  'username': widget.username,
                  'malId': anime.malId,
                },
              ); // Pass the MalId to the detailed page
            },
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: MediaQuery.of(context).size.height * 0.20,
                    child: Image.network(
                      anime.images?['jpg']?.imageUrl ?? '',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          anime.titleEnglish ?? anime.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(anime.titleJapanese ?? ''),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }
  }
}

class CustomInputDecoration {
  static InputDecoration getTextFieldDecoration({
    required String labelText,
    required Color primaryColor,
  }) {
    return InputDecoration(
      labelText: labelText,
      labelStyle: TextStyle(
        color: primaryColor,
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: primaryColor,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: primaryColor,
        ),
      ),
    );
  }
}
