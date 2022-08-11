import 'dart:convert';
import 'dart:async';
import 'package:ccblyricsflutter/View/Assets/Hinos/Lyrics.dart';
import 'package:flutter/material.dart';
import 'package:ccblyricsflutter/Model/LyricsModel.dart';
import 'package:http/http.dart' as http;

class LyricScreen extends StatefulWidget {
  LyricScreen({required this.number});
  String number;

  @override
  State<LyricScreen> createState() => _LyricScreenState();
}

class _LyricScreenState extends State<LyricScreen> {
  Future<List<LyricsModel>> getLyricsData() async {
    return await Future.delayed(const Duration(seconds: 2), () {
      List data = jsonDecode(widget.number);
      print(data);
      List<LyricsModel> lyrics =
          data.map((data) => LyricsModel.fromMap(data['attributes'])).toList();
      return lyrics;
    });
  }

  @override
  Widget build(BuildContext context) {
    var lyric = widget.number;
    return Scaffold(
      body: Column(
        children: [
          Text(lyric),
          FutureBuilder<List<LyricsModel>>(
            future: getLyricsData(),
            builder: (context, snapshot) {
              var lyricsItens = snapshot.data;
              if (lyricsItens != null) {
                return SizedBox(
                  height: 300,
                  child: ListView.builder(
                    itemCount: lyricsItens.length,
                    itemBuilder: (context, index) {
                      var lyricsData = lyricsItens[index];
                      return ExpansionTile(
                        title: Text(lyricsData.title),
                      );
                    },
                  ),
                );
              }
              return const Text('Nada encontrado');
            },
          ),
        ],
      ),
    );
  }
}
