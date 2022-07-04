import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextPrimary extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? weight;
  final Color? textColor;
  const TextPrimary(this.text,
      {Key? key, this.size, this.weight, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: size,
        fontWeight: weight,
        color: textColor,
      ),
    );
  }
}
