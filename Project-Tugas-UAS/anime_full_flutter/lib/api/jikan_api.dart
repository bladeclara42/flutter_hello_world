import 'dart:convert';
import 'package:anime_full_flutter/models/top_anime.dart';
import 'package:http/http.dart' as http;
import 'package:anime_full_flutter/models/anime.dart';
import 'package:anime_full_flutter/models/search.dart';

class JikanApiService {
  static const String baseUrl = 'https://api.jikan.moe/v4';

  static Future<List<TopAnime>> getTopAnime() async {
    const String apiUrl = 'https://api.jikan.moe/v4/top/anime';

    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final List<TopAnime> topAnimeList = [];

        for (var animeData in jsonData['data']) {
          final topAnime = TopAnime.fromJson(animeData);
          topAnimeList.add(topAnime);
        }

        return topAnimeList;
      } else {
        throw Exception('Failed to fetch top anime');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  static Future<Anime> getAnime(int AnimeId) async {
    final response = await http.get(Uri.parse('$baseUrl/anime/$AnimeId'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final animeData = data['data'];
      final anime = Anime.fromJson(animeData);
      return anime;
    } else {
      throw Exception('Error fetching anime data');
    }
  }

  static Future<List<Search>> searchAnime(String query) async {
    final response = await http.get(Uri.parse('$baseUrl/anime?q=$query'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final animeDataList = data['data'] as List<dynamic>;
      final animeList =
          animeDataList.map((animeData) => Search.fromJson(animeData)).toList();
      return animeList;
    } else {
      throw Exception('Error searching anime');
    }
  }
}

  // static Future<List<AnimeId>> getAnimeList() async {
  //   final response = await http.get(Uri.parse('$baseUrl/anime'));

  //   if (response.statusCode == 200) {
  //     final data = json.decode(response.body);
  //     final List<dynamic> animeListData = data['data'];
  //     final animeList = animeListData
  //         .map((animeData) => AnimeId.fromJson(animeData))
  //         .toList();
  //     return animeList;
  //   } else {
  //     throw Exception('Error fetching anime list');
  //   }
  // }


