import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(
              fontSize: 50,
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
            ),
          ),
          Text(
            subtitle,
            style: GoogleFonts.montserrat(
              decoration: TextDecoration.none,
              fontSize: 80,
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
