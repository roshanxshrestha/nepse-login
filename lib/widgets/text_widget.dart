import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String textHere;

  const CustomTextField({super.key, required this.textHere});

  @override
  Widget build(BuildContext context) {
    return Text(
      textHere,
      style: GoogleFonts.roboto(
        fontSize: 16,
        color: Colors.black87,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
