import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryText extends StatelessWidget {
  PrimaryText({Key? key, required this.text}) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.montserrat(
          fontSize: 40,
          fontWeight: FontWeight.w800,
          color: Colors.black,
        ));
  }
}

class SecoundText extends StatelessWidget {
  SecoundText(
      {Key? key,
      required this.text,
      required this.sizedText,
      required this.alignText});
  double sizedText;

  String text;
  AlignmentGeometry alignText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Align(
        alignment: alignText,
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            fontSize: sizedText,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class ThirdText extends StatelessWidget {
  ThirdText({Key? key, required this.text, required this.sizedText});
  double sizedText;
  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            fontSize: sizedText,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class ChorusVerse extends StatelessWidget {
  ChorusVerse(
      {Key? key,
      required this.text,
      required this.sizedText,
      required this.alignText});
  double sizedText;
  String text;
  AlignmentGeometry alignText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20, right: 10),
      child: Align(
        alignment: alignText,
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            fontSize: sizedText,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
