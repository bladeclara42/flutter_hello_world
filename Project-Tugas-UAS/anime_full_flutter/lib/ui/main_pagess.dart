import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, $username'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
        backgroundColor: primaryColor,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(
            context,
            '/search',
            arguments: {
              'id': id,
              'email': email,
              'username': username,
            },
          );
        },
        child: Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:anime_full_flutter/api/jikan_api.dart';

// class MainPage extends StatefulWidget {
//   final String email;
//   final String username;
//   final int id;
//   final Color primaryColor;
//   const MainPage(
//       {Key? key,
//       required this.email,
//       required this.username,
//       required this.id,
//       required this.primaryColor})
//       : super(key: key);

//   @override
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   String _resultText = '';

//   Future<void> _fetchAnime() async {
//     try {
//       final anime = await JikanApiService.getAnime(1);
//       setState(() {
//         _resultText =
//             'Title: ${anime.images['jpg']?.imageUrl}\nRating: ${anime.titleEnglish}';
//       });
//     } catch (e) {
//       setState(() {
//         _resultText = 'Error fetching anime data';
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Welcome, ${widget.id}'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.logout),
//             onPressed: () {
//               Navigator.pushReplacementNamed(context, '/');
//             },
//           ),
//         ],
//         backgroundColor: widget.primaryColor,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           ElevatedButton(
//             onPressed: () {
//               _fetchAnime();
//             },
//             child: const Text('Fetch Anime'),
//           ),
//           const SizedBox(height: 20),
//           Text(
//             _resultText,
//             style: const TextStyle(fontSize: 18),
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//       floatingActionButton: Stack(
//         children: [
//           Positioned(
//             bottom: 16,
//             left: 16,
//             child: FloatingActionButton(
//               heroTag: "favorite",
//               onPressed: () {
//                 // Perform left action
//               },
//               child: Icon(Icons.favorite),
//             ),
//           ),
//           Positioned(
//             bottom: 16,
//             right: 16,
//             child: FloatingActionButton(
//               heroTag: "search",
//               onPressed: () {
//                 Navigator.pushReplacementNamed(
//                   context,
//                   '/search',
//                   arguments: {
//                     'id': widget.id,
//                     'email': widget.email,
//                     'username': widget.username
//                   },
//                 );
//               },
//               child: Icon(Icons.search),
//             ),
//           ),
//         ],
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//     );
//   }
// }
