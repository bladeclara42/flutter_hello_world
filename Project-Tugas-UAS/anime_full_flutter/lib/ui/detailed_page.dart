import 'package:flutter/material.dart';
import 'package:anime_full_flutter/api/jikan_api.dart';
import 'package:anime_full_flutter/models/anime.dart' as AnimeModel;
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailedPage extends StatefulWidget {
  final String email;
  final String username;
  final int id;
  final Color primaryColor;
  final int malId;

  const DetailedPage({
    Key? key,
    required this.email,
    required this.username,
    required this.id,
    required this.primaryColor,
    required this.malId,
  }) : super(key: key);

  @override
  _DetailedPageState createState() => _DetailedPageState();
}

class _DetailedPageState extends State<DetailedPage> {
  late Future<AnimeModel.Anime> _animeFuture;
  late YoutubePlayerController _youtubePlayerController;

  @override
  void initState() {
    super.initState();
    _animeFuture = JikanApiService.getAnime(widget.malId);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<AnimeModel.Anime>(
      future: _animeFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          AnimeModel.Anime anime = snapshot.data!;
          _youtubePlayerController = YoutubePlayerController(
            initialVideoId: anime.trailer?.youtubeId != null &&
                    anime.trailer!.youtubeId!.isNotEmpty
                ? anime.trailer!.youtubeId!
                : '',
            flags: YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          );
          return Scaffold(
            appBar: AppBar(
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
              title: Text(anime.title),
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
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.0),
                    ),
                    if (anime.trailer?.youtubeId != null &&
                        anime.trailer!.youtubeId!.isNotEmpty)
                      YoutubePlayer(
                        controller: _youtubePlayerController,
                        showVideoProgressIndicator: true,
                      ),
                    SizedBox(height: 16.0),
                    Container(
                      child: Row(
                        children: [
                          Image.network(
                            anime.images?['jpg']?.imageUrl ?? '',
                            width: MediaQuery.of(context).size.width * 0.4,
                          ),
                          Expanded(
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    anime.titleEnglish ?? '',
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      fontFamily: 'ydhope',
                                    ),
                                  ),
                                  Text(
                                    anime.titleJapanese ?? '',
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      fontFamily: 'ydhope',
                                    ),
                                  ),
                                  SizedBox(height: 16.0),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        anime.synopsis ?? '',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'aryuan',
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Type: ${anime.type ?? ''}',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            'Episodes: ${anime.episodes ?? ''}',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            'Status: ${anime.status ?? ''}',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            'Season: ${anime.season ?? ''}',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            'Year: ${anime.year ?? ''}',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            'Rating: ${anime.rating ?? ''}',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error fetching anime data'),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:anime_full_flutter/api/jikan_api.dart';
// import 'package:anime_full_flutter/models/anime.dart' as AnimeModel;
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class DetailedPage extends StatefulWidget {
//   final String email;
//   final String username;
//   final int id;
//   final Color primaryColor;
//   final int malId;

//   const DetailedPage({
//     Key? key,
//     required this.email,
//     required this.username,
//     required this.id,
//     required this.primaryColor,
//     required this.malId,
//   }) : super(key: key);

//   @override
//   _DetailedPageState createState() => _DetailedPageState();
// }

// class _DetailedPageState extends State<DetailedPage> {
//   late Future<AnimeModel.Anime> _animeFuture;
//   late YoutubePlayerController _youtubePlayerController;

//   @override
//   void initState() {
//     super.initState();
//     _animeFuture = JikanApiService.getAnime(widget.malId);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<AnimeModel.Anime>(
//       future: _animeFuture,
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           AnimeModel.Anime anime = snapshot.data!;
//           _youtubePlayerController = YoutubePlayerController(
//             initialVideoId:
//                 anime.trailer?.url != null && anime.trailer!.url!.isNotEmpty
//                     ? YoutubePlayer.convertUrlToId(anime.trailer!.url!) ?? ''
//                     : '',
//             flags: YoutubePlayerFlags(
//               autoPlay: true,
//               mute: false,
//             ),
//           );
//           return Scaffold(
//             appBar: AppBar(
//               leading: IconButton(
//                 icon: Icon(Icons.arrow_back),
//                 onPressed: () {
//                   Navigator.pushReplacementNamed(
//                     context,
//                     '/main',
//                     arguments: {
//                       'id': widget.id,
//                       'email': widget.email,
//                       'username': widget.username,
//                     },
//                   );
//                 },
//               ),
//               title: Text(anime.title),
//               actions: [
//                 IconButton(
//                   icon: Icon(Icons.logout),
//                   onPressed: () {
//                     Navigator.pushReplacementNamed(context, '/');
//                   },
//                 ),
//               ],
//               backgroundColor: widget.primaryColor,
//             ),
//             body: Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(top: 20.0),
//                   ),
//                   if (anime.trailer?.url != null &&
//                       anime.trailer!.url!.isNotEmpty)
//                     YoutubePlayer(
//                       controller: _youtubePlayerController,
//                       showVideoProgressIndicator: true,
//                     ),
//                   Container(
//                     width: double.infinity,
//                     height: 200,
//                     child: Image.network(
//                       anime.images?['jpg']?.imageUrl ?? '',
//                       fit: BoxFit.fitWidth,
//                     ),
//                   ),
//                   SizedBox(height: 16.0),
//                   Text(
//                     'Title: ${anime.title}',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 8.0),
//                   Text('Type: ${anime.type ?? ''}'),
//                   SizedBox(height: 8.0),
//                   Text('Episodes: ${anime.episodes ?? ''}'),
//                   SizedBox(height: 8.0),
//                   Text('Rating: ${anime.rating ?? ''}'),
//                 ],
//               ),
//             ),
//           );
//         } else if (snapshot.hasError) {
//           return Center(
//             child: Text('Error fetching anime data'),
//           );
//         } else {
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//       },
//     );
//   }
// }
