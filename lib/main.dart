import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

const sounds = [
  'note1.wav',
  'note2.wav',
  'note3.wav',
  'note4.wav',
  'note5.wav',
  'note6.wav',
  'note7.wav',
];
const colours = [
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.teal,
  Colors.blue,
  Colors.purple
];

void main() => runApp(HomeScreen());

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final titleController = TextEditingController();
  String text = "No Value";
  String _textString = '';

  int num1, num2, num3, num4, num5, num6, num7;
  void _1(String text) {
    setState(() {
      _textString = text;
      int num = int.parse(_textString);
      num1 = num;
    });
  }

  void _2(String text2) {
    setState(() {
      _textString = text2;
      int num = int.parse(_textString);
      num2 = num;
    });
  }

  void _3(String text3) {
    setState(() {
      _textString = text3;
      int num = int.parse(_textString);
      num3 = num;
    });
  }

  void _4(String text4) {
    setState(() {
      _textString = text4;
      int num = int.parse(_textString);
      num4 = num;
    });
  }

  void _5(String text5) {
    setState(() {
      _textString = text5;
      int num = int.parse(_textString);
      num5 = num;
    });
  }

  void _6(String text6) {
    setState(() {
      _textString = text6;
      int num = int.parse(_textString);
      num6 = num;
    });
  }

  void _7(String text7) {
    setState(() {
      _textString = text7;
      int num = int.parse(_textString);
      num7 = num;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white10,
          body: Stack(
            children: [
              Column(
                children: [
                  TextField(
                    onChanged: (text) {
                      _1(text);
                    },
                  ),
                  TextField(
                    onChanged: (text2) {
                      _2(text2);
                    },
                  ),
                  TextField(
                    onChanged: (text3) {
                      _3(text3);
                    },
                  ),
                  TextField(
                    onChanged: (text4) {
                      _4(text4);
                    },
                  ),
                  TextField(
                    //                     <--- TextField
                    maxLength: 7,
                    onChanged: (text5) {
                      _5(text5);
                    },
                  ),
                  TextField(
                    //                       <--- TextField
                    onChanged: (text6) {
                      _6(text6);
                    },
                  ),
                  TextField(
                    //                     <--- TextField
                    maxLength: 7,
                    onChanged: (text7) {
                      _7(text7);
                    },
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: buildAllKeys(),
              ),
            ],
          ),
        ));
  }

  List<Widget> buildAllKeys() {
    List<Widget> keys = [];
    for (var i = 0; i < sounds.length; i++) {
      keys.add(
        Expanded(
          child: FlatButton(
            color: colours[i],
            onPressed: () {
              final AudioCache player = new AudioCache();
              player.play(sounds[i]);
            },
          ),
        ),
      );
    }
    return keys;
  }
}
