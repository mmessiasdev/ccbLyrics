import 'dart:convert';

import 'package:ccblyricsflutter/View/Componnets/input.dart';
import 'package:ccblyricsflutter/View/Componnets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white, // cor da barra superior
      statusBarIconBrightness: Brightness.dark, // ícones da barra superior
      systemNavigationBarColor: Colors.white, // cor da barra inferior
      systemNavigationBarIconBrightness:
          Brightness.dark, // ícones da barra inferior
    ));
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Expanded(
              child: Logo(title: 'Hinário', subtitle: 'CCB'),
            ),
            Expanded(
              child: Center(child: Input()),
            )
          ],
        ),
      ),
    );
  }
}
