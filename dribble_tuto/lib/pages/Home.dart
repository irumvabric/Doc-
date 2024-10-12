import 'package:dribble_tuto/util/EmotionsFaces.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: ''),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // Greetings Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Hi,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi,Jared!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('23 Jan, 2024',
                              style: TextStyle(color: Colors.blue[200])),
                        ],
                      ),
                      // Notification
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(Icons.notifications, color: Colors.white),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  //Search Row

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'search',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  //How do you feel Row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  //Emoi Row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //bad
                      Column(
                        children: [
                          Emotionsfaces(emotionFace: '😔'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Bad',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      //fine
                      Column(
                        children: [
                          Emotionsfaces(emotionFace: '😌'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Fine',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      //well
                      Column(
                        children: [
                          Emotionsfaces(emotionFace: '😊'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Well',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      //excellent

                      Column(
                        children: [
                          Emotionsfaces(emotionFace: '😀'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Excellent',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),

                  // body container

                  Expanded(
                    child: Container(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
