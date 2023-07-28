import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  final Color primaryColor;
  const StartPage({super.key, required this.primaryColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anime APP'),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.headset_mic_rounded,
              color: primaryColor,
            ),
            onPressed: () {},
          )
        ],
        elevation: 0,
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: Text(
              'Welcome to Anime APP',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: primaryColor,
                fontFamily: 'PopHappiness',
              ),
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 30),
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/test.gif',
                  width: 500,
                  height: 500,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 450),
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(999.0),
                    ),
                    backgroundColor: primaryColor,
                    minimumSize: const Size(300, 50),
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Wrap(
                    spacing: 15,
                    children: <Widget>[
                      Icon(
                        Icons.login,
                        color: Colors.white,
                      ),
                      Text('Login'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: <Widget>[
                Wrap(
                  spacing: 15,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        FloatingActionButton(
                          heroTag: "home",
                          onPressed: () {},
                          backgroundColor: Colors.purple,
                          child: const Icon(
                            Icons.house,
                            color: Colors.white,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 15)),
                        const Text(
                          'Home',
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        FloatingActionButton(
                          heroTag: "favorite",
                          onPressed: () {},
                          backgroundColor: Colors.orange,
                          child: const Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 15)),
                        const Text('Favorite'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        FloatingActionButton(
                          heroTag: "trailer",
                          onPressed: () {},
                          backgroundColor: Colors.yellow[700],
                          child: const Icon(
                            Icons.video_collection_rounded,
                            color: Colors.white,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 15)),
                        Text(
                          'Trailer',
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        FloatingActionButton(
                          heroTag: "onGoing",
                          onPressed: () {},
                          backgroundColor: Colors.blue[700],
                          child: const Icon(
                            Icons.change_circle_sharp,
                            color: Colors.white,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 15)),
                        const Text('On-Going'),
                      ],
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(bottom: 30)),
              ],
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.red,
      //   onPressed: () {
      //     // Navigator.push(context, MaterialPageRoute(builder: (context) {
      //     //   return const DoneTourismList();
      //     // }));
      //   },
      //   child: Icon(
      //     Icons.favorite,
      //     color: Colors.white,
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}


// import 'package:flutter/material.dart';

// class StartPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Welcome to MyApp',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, '/login');
//               },
//               child: Text('Login'),
//             ),
//             SizedBox(height: 8),
//             GestureDetector(
//               onTap: () {
//                 Navigator.pushNamed(context, '/register');
//               },
//               child: Text(
//                 'Don\'t have an account? Register here',
//                 style: TextStyle(
//                   decoration: TextDecoration.underline,
//                   color: Colors.blue,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
