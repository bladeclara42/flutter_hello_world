import 'package:flutter/material.dart';
import 'package:anime_flutter_app/model/tourism_place.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'main.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);
  final TourismPlace place;

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Color _primaryColor;
  late YoutubePlayerController _youtubePlayerController;

  @override
  void initState() {
    super.initState();
    _primaryColor = MyApp.primaryColor;
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.place.videoUrl)!,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _youtubePlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext build) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.place.englishTitles),
        backgroundColor: _primaryColor,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              YoutubePlayer(
                controller: _youtubePlayerController,
                showVideoProgressIndicator: true,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Row(
                  children: [
                    Image.network(
                      widget.place.imageUrl,
                      width: 150.0,
                      height: 150.0,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.place.englishTitles,
                              style: TextStyle(
                                fontSize: 24.0,
                                fontFamily: 'ydhope',
                              ),
                            ),
                            Text(
                              widget.place.japaneseTitles,
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
                  widget.place.synopsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'aryuan',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Type: ${widget.place.type}',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'Episodes: ${widget.place.episodes}',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'Status: ${widget.place.status}',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'Producers: ${widget.place.producers}',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'Licensors: ${widget.place.licensors}',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'Studios: ${widget.place.studios}',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'Genres: ${widget.place.genres}',
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
  }
}

// import 'package:flutter/material.dart';
// import 'package:anime_flutter_app/model/tourism_place.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'main.dart';

// class DetailScreen extends StatefulWidget {
//   const DetailScreen({Key? key, required this.place}) : super(key: key);
//   final TourismPlace place;

//   @override
//   _DetailScreenState createState() => _DetailScreenState();
// }

// class _DetailScreenState extends State<DetailScreen> {
//   late Color _primaryColor;

//   @override
//   void initState() {
//     super.initState();
//     _primaryColor = MyApp.primaryColor;
//   }

//   @override
//   Widget build(BuildContext build) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.place.englishTitles),
//         backgroundColor: _primaryColor,
//       ),
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Image.network(widget.place.imageUrl),
//               Container(
//                 margin: const EdgeInsets.only(top: 16.0),
//                 child: Text(
//                   widget.place.englishTitles,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 30.0,
//                     fontFamily: 'ydhope',
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Text(
//                   widget.place.synopsis,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 16.0,
//                     fontFamily: 'aryuan',
//                   ),
//                 ),
//               ),
//               Container(
//                 height: 150,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(4.0),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(32.0),
//                         child: Image.network(widget.place.imageUrl),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
