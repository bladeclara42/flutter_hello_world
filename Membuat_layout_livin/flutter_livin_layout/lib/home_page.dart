import 'package:flutter/material.dart';
import 'calculator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Livin Layout'),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.headset_mic_rounded,
              color: Colors.blue,
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Calculator()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(999.0),
                    ),
                    minimumSize: const Size(300, 50),
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: Wrap(
                    spacing: 15,
                    children: const <Widget>[
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
                        const Text('Home'),
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
                          heroTag: "comment",
                          onPressed: () {},
                          backgroundColor: Colors.yellow[700],
                          child: const Icon(
                            Icons.comment,
                            color: Colors.white,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 15)),
                        const Text('Comment'),
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
