// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:playground/model/lyrics_model.dart';

// String json =
//     '[{"id":1,"attributes":{"title":"Ó meninos, estamos reunidos","number":"431","speed":"75","firstnote":"c","lyricid":"ccblyric","firstverse":"Ó meninos, nós estamos\nReunidos ante o bom Pastor;\nAnsiosos, esperamos\nSeus conselhos de amor.","secoundverse":"Ó meninos, atendamos\nA Jesus, divino Salvador;\nPois é d`Ele que esperamos\nA virtude e o vigor.\n","thirdverse":"Ó meninos, com firmeza\nNós devemos sempre caminhar;\nÉ eterna a riqueza\nQue Jesus nos veio dar.","fourthverse":null,"chorus":"Nós estamos na presença\nDo veraz, fiel e bom Pastor,\nDesfrutando Suas bênçãos\nQue provêm do Seu amor.","final":null,"author":"Lowell Mason","createdAt":"2022-07-29T13:06:53.359Z","updatedAt":"2022-08-01T14:43:39.332Z","publishedAt":"2022-07-29T13:16:24.780Z"}}]';

// class LyricScreen extends StatefulWidget {
//   const LyricScreen({Key? key}) : super(key: key);

//   @override
//   State<LyricScreen> createState() => _LyricScreenState();
// }

// class _LyricScreenState extends State<LyricScreen> {
//   @override
//   void initState() {
//     super.initState();
//     fetchItem();
//   }

//   void fetchItem() async {
//     String response = await Future.delayed(const Duration(seconds: 2))
//         .then((value) => json.replaceAll('\n', ''));
//     var listMap = jsonDecode(response);

//     for (var item in listMap) {
//       var attributes = item['attributes'];
//       if (attributes != null) items.add(LyricsModel.fromMap(attributes));
//     }
//     setState(() {});
//   }

//   List<LyricsModel> items = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         child: ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             var currentLyric = items[index];
//             return ExpansionTile(
//               title: Text(currentLyric.title),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
