import 'package:flutter/material.dart';
import 'calculator.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Livin Layout'),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.headset_mic_rounded,
              color: Colors.blue,
            ),
            onPressed: () {},
          )
        ],
        elevation: 0,
      ),
      body: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 30),
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/images/test.gif',
                    width: 500,
                    height: 500,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 450),
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Calculator()),
                      );
                    },
                    child: Wrap(
                      spacing: 15,
                      children: <Widget>[
                        Icon(
                          Icons.login,
                          color: Colors.white,
                        ),
                        Text('Login'),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(999.0),
                      ),
                      minimumSize: Size(300, 50),
                      textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 20),
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
                            child: Icon(
                              Icons.house,
                              color: Colors.white,
                            ),
                            backgroundColor: Colors.purple,
                          ),
                          Padding(padding: EdgeInsets.only(top: 15)),
                          Text('Home'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          FloatingActionButton(
                            heroTag: "favorite",
                            onPressed: () {},
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                            backgroundColor: Colors.orange,
                          ),
                          Padding(padding: EdgeInsets.only(top: 15)),
                          Text('Favorite'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          FloatingActionButton(
                            heroTag: "comment",
                            onPressed: () {},
                            child: Icon(
                              Icons.comment,
                              color: Colors.white,
                            ),
                            backgroundColor: Colors.yellow[700],
                          ),
                          Padding(padding: EdgeInsets.only(top: 15)),
                          Text('Comment'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          FloatingActionButton(
                            heroTag: "onGoing",
                            onPressed: () {},
                            child: Icon(
                              Icons.change_circle_sharp,
                              color: Colors.white,
                            ),
                            backgroundColor: Colors.blue[700],
                          ),
                          Padding(padding: EdgeInsets.only(top: 15)),
                          Text('On-Going'),
                        ],
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                ],
              ),
            ),
          ],
        ),
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
