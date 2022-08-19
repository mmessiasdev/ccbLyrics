import 'dart:convert';

import 'package:ccblyricsflutter/Controller/Lyrics.dart';
import 'package:ccblyricsflutter/Model/LyricsModel.dart';
import 'package:ccblyricsflutter/View/Componnets/lyricpage.dart';
import 'package:ccblyricsflutter/View/Componnets/texts.dart';
import 'package:flutter/material.dart';

/// Component responsible for rendering the APP's main input
/// ///

class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  TextEditingController lyricNumber = TextEditingController();
  var valueInput = '';
  var valor = '431';
  var ccb = 'ccb';

  void Lyric() {
    // String number;

    setState(() {
      // number = valor.toString();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LyricPage(
            number: valor,
          ),
        ),
      );
      lyricNumber.clear();
      print(valor.toString());
    });
  }

  @override
  void dispose() {
    lyricNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SecoundText(
          text: lyricNumber.text,
          sizedText: 20,
          alignText: Alignment.centerLeft,
        ),
        SizedBox(
          child: Container(
            width: 120,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 51, 51, 51),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child: TextField(
                onChanged: (text) {
                  valor = text;
                  print("TextField: $valor");
                },
                controller: lyricNumber,
                textAlign: TextAlign.center,
                showCursor: false,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                ),
                autofocus: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                      onPressed: Lyric,
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                ),
                keyboardType: TextInputType.numberWithOptions(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
