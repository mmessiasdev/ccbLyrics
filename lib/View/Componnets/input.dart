import 'package:ccblyricsflutter/View/Assets/Hinos/Lyrics.dart';
import 'package:ccblyricsflutter/View/Componnets/texts.dart';
import 'package:ccblyricsflutter/View/Screens/LyricScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  TextEditingController lyricNumber = TextEditingController();
  var valueInput = '';
  var valor;
  String ccb = 'ccb';

  void Lyric() {
    String number;

    setState(() {
      number = ccb + valor.toString();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LyricScreen(number: ccb + valor.toString()),
        ),
      );
      lyricNumber.clear();
      print(ccb + valor);
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
        SecoundText(text: lyricNumber.text),
        SizedBox(
          child: Container(
            width: 120,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 51, 51, 51),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child: TextField(
                onChanged: (text) {
                  valor = text;
                  print("TextField: $text");
                },
                controller: lyricNumber,
                textInputAction: TextInputAction.search,
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.bottom,
                showCursor: false,
                maxLength: 3,
                maxLengthEnforcement: MaxLengthEnforcement.none,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                ),
                autofocus: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon:
                      IconButton(onPressed: Lyric, icon: Icon(Icons.search)),
                ),
                keyboardType: TextInputType.numberWithOptions(),
              ),
            ),
          ),
        ),
        MaterialButton(onPressed: () {}),
      ],
    );
  }
}