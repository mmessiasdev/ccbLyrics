// // import 'dart:convert';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/services.dart';
// // // import '../Assets/Hinos/de Jovens/';
// // import 'package:http/http.dart' as http;
// // import 'package:playground/model/lyrics_model.dart';

// const LYRICTESTJSON =
//     '[{"id": 1,"attributes": {"title": "Ó meninos, estamos reunidos","number": "431", "speed": "75","firstnote": "c", "lyricid": "ccblyric","firstverse": "Ó meninos, nós estamosReunidos ante o bom Pastor;Ansiosos, esperamosSeus conselhos de amor.","secoundverse": "Ó meninos, atendamosA Jesus, divino Salvador;Pois é d`Ele que esperamosA virtude e o vigor.","thirdverse": "Ó meninos, com firmezaNós devemos sempre caminhar;É eterna a riquezaQue Jesus nos veio dar.","fourthverse": null,"chorus": "Nós estamos na presençaDo veraz, fiel e bom Pastor,Desfrutando Suas bênçãosQue provêm do Seu amor.","final": null,"author": "Lowell Mason","createdAt": "2022-07-29T13:06:53.359Z","updatedAt": "2022-08-01T14:43:39.332Z","publishedAt": "2022-07-29T13:16:24.780Z"}}]';

// // class LyricScreen extends StatefulWidget {
// //   const LyricScreen({Key? key}) : super(key: key);

// //   @override
// //   State<LyricScreen> createState() => _LyricScreenState();
// // }

// // class _LyricScreenState extends State<LyricScreen> {
// //   Future<List<LyricsModel>> getLyricsData() async {
// //     return await Future.delayed(const Duration(seconds: 2), () {
// //       List<dynamic> data = jsonDecode(LYRICTESTJSON);
// //       List<LyricsModel> lyrics =
// //           data.map((data) => LyricsModel.fromMap(data['attributes'])).toList();
// //       return lyrics;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Column(
// //         children: [
// //           const Text('Titulo'),
// //           FutureBuilder<List<LyricsModel>>(
// //             future: getLyricsData(),
// //             builder: (context, snapshot) {
// //               var lyricsList = snapshot.data;
// //               if (snapshot.data != null) {
// //                 return SizedBox(
// //                   height: 300,
// //                   child: ListView.builder(
// //                     itemCount: lyricsList?.length,
// //                     itemBuilder: (context, index) {
// //                       var lyricsData = lyricsList![index];
// //                       return ExpansionTile(
// //                         title: Text(lyricsData.title),
// //                       );
// //                     },
// //                   ),
// //                 );
// //               }
// //               return const Text('Nada encontrado');
// //             },
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }
