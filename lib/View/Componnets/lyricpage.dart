import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:ccblyricsflutter/Controller/Lyrics.dart';
import 'package:ccblyricsflutter/View/Componnets/texts.dart';
import 'package:flutter/material.dart';

import '../../Model/LyricsModel.dart';

class LyricPage extends StatefulWidget {
  LyricPage({Key? key, required this.number}) : super(key: key);
  final String number;

  @override
  State<LyricPage> createState() => _LyricPageState();
}

class _LyricPageState extends State<LyricPage> {
  @override
  Future<List<LyricsModel>> getLyricsData() async {
    return await Future.delayed(
      const Duration(seconds: 1),
      () {
        List<dynamic> data = jsonDecode(ccb447);
        List<LyricsModel> lyrics = data
            .map((data) => LyricsModel.fromMap(data['attributes']))
            .toList();
        return lyrics;
      },
    );
  }

  double defSized = 18;
  double defSizedTitle = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<LyricsModel>>(
              future: getLyricsData(),
              builder: (context, snapshot) {
                var lyricsList = snapshot.data;
                if (snapshot.data != null) {
                  return ListView.builder(
                    itemCount: lyricsList?.length,
                    itemBuilder: (context, index) {
                      var lyricsData = lyricsList![index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                PrimaryText(text: lyricsData.number),
                                IconButton(
                                  onPressed: () {
                                    final player = AudioCache();
                                    player.play('${lyricsData.firstnote}.wav');
                                  },
                                  iconSize: 40,
                                  icon: const Icon(
                                    Icons.play_arrow_rounded,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 40, bottom: 15),
                              child: Column(
                                children: [
                                  SecoundText(
                                    text: lyricsData.title,
                                    sizedText: defSizedTitle,
                                    alignText: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                ThirdText(
                                  text: '1. ${lyricsData.firstverse}',
                                  sizedText: defSized,
                                ),
                                Builder(builder: (context) {
                                  if (lyricsData.chorus == '') {
                                    return const Padding(
                                      padding: EdgeInsets.all(0),
                                    );
                                  }
                                  return ChorusVerse(
                                    text: lyricsData.chorus,
                                    sizedText: defSized,
                                    alignText: Alignment.bottomLeft,
                                  );
                                }),
                                Builder(builder: (context) {
                                  if (lyricsData.secoundverse == '') {
                                    return const Padding(
                                      padding: EdgeInsets.all(0),
                                    );
                                  }
                                  return ThirdText(
                                    text: '2. ${lyricsData.secoundverse}',
                                    sizedText: defSized,
                                  );
                                }),
                                Builder(builder: (context) {
                                  if (lyricsData.thirdverse == '') {
                                    return const Padding(
                                      padding: EdgeInsets.all(0),
                                    );
                                  }
                                  return ThirdText(
                                    text: '3. ${lyricsData.thirdverse}',
                                    sizedText: defSized,
                                  );
                                }),
                                Builder(builder: (context) {
                                  if (lyricsData.fourthverse == '') {
                                    return const Padding(
                                      padding: EdgeInsets.all(0),
                                    );
                                  }
                                  return ThirdText(
                                    text: '4. ${lyricsData.fourthverse}',
                                    sizedText: defSized,
                                  );
                                }),
                                Builder(builder: (context) {
                                  if (lyricsData.chorusFinal == '') {
                                    return const Padding(
                                      padding: EdgeInsets.all(0),
                                    );
                                  }
                                  return ChorusVerse(
                                    text: '${lyricsData.chorusFinal}',
                                    sizedText: defSized,
                                    alignText: Alignment.centerLeft,
                                  );
                                }),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ThirdText(
                                        text:
                                            'Média de Velocidade: ${lyricsData.speed}',
                                        sizedText: 15,
                                      ),
                                      // IconButton(
                                      //   onPressed: () {},
                                      //   icon: Icon(
                                      //     Icons.play_arrow_rounded,
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Builder(builder: (context) {
                                        if (lyricsData.author == '') {
                                          return const Padding(
                                            padding: EdgeInsets.all(0),
                                          );
                                        }
                                        return ThirdText(
                                          text: lyricsData.author,
                                          sizedText: 15,
                                        );
                                      }),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }
                return Expanded(
                    child: Center(
                        child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircularProgressIndicator(color: Colors.black),
                    SizedBox(height: 20),
                    Text('Procurando Hino...'),
                  ],
                )));
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          // lyricNumber--;
                        });
                      },
                      icon: Icon(Icons.keyboard_arrow_left_rounded))
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        defSized--;
                      });
                    },
                    icon: Icon(Icons.text_decrease_rounded),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        defSized++;
                      });
                    },
                    icon: Icon(
                      Icons.text_increase_rounded,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_right_rounded))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
