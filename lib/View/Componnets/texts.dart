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
  SecoundText({Key? key, required this.text}) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    );
  }
}
