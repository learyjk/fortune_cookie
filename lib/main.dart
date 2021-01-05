import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffF44336),
        appBar: AppBar(
          title: Text('Fortune Cookie'),
          centerTitle: true,
          backgroundColor: Color(0xffD32F2F),
        ),
        body: FortuneCookiePage(),
      ),
    ),
  );
}

class FortuneCookiePage extends StatefulWidget {
  @override
  _FortuneCookiePageState createState() => _FortuneCookiePageState();
}

class _FortuneCookiePageState extends State<FortuneCookiePage> {
  var fortuneList = [
    'There is a true and sincere friendship between you and your friends.',
    'Ideas are like children; there are none so wonderful as your own.',
    'It takes more than good memory to have good memories.',
    'A thrilling time is in your immediate future.',
    'Plan for many pleasures ahead.',
    'Your blessing is no more than being safe and sound for the whole lifetime.',
    'The joyfulness of a man prolongeth his days.',
    'Your everlasting patience will be rewarded sooner or later.',
    'Make two grins grow where there was only a grouch before.',
    'Something you lost will soon turn up.',
    'Your heart is pure, and your mind clear, and your soul devout.',
    'Excitement and intrigue follow you closely wherever you go!',
    'A pleasant surprise is in store for you.',
    'May life throw you a pleasant curve.',
    'Be mischievous and you will not be lonesome.',
    'You have a deep appreciation of the arts and music.',
    'Your flair for the creative takes an important place in your life.',
    'Your artistic talents win the approval and applause of others.',
    'Pray for what you want, but work for the things you need.',
    'Your many hidden talents will become obvious to those around you.',
    'Don’t forget, you are always on our minds.',
    'Your greatest fortune is the large number of friends you have.',
    'A firm friendship will prove the foundation on your success in life.',
    'Don’t ask, don’t say. Everything lies in silence.',
    'Look for new outlets for your own creative abilities.',
    'Be prepared to accept a wondrous opportunity in the days ahead!',
    'Fame, riches and romance are yours for the asking.',
    'Good luck is the result of good planning.',
    'Good things are being said about you.',
    'Smiling often can make you look and feel younger.',
    'Someone is speaking well of you.',
    'The time is right to make new friends.',
  ];

  int getRandomNumber() {
    return Random().nextInt(fortuneList.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Card(
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    fortuneList[getRandomNumber()],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffD32F2F),
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          FlatButton(
            onPressed: () {
              setState(() {});
            },
            child: Image.asset('images/fortune-cookie.png'),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
