import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotaoCalculadora extends StatelessWidget {
  final String text;
  final int textColor;
  final int bgColor;
  final double textSize;
  final Function callback;

  const BotaoCalculadora({
    required this.text,
    required this.textColor,
    required this.bgColor,
    required this.textSize,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: SizedBox(
        width: 80,
        height: 70,
        child: OutlinedButton(
          onPressed: () => callback(text),
          style: ButtonStyle(
            side: MaterialStateProperty.all(
              BorderSide(
                width: 3,
                color: Color(0xff36190e),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(
              Color(bgColor),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          child: Text(
            text,
            style: GoogleFonts.firaCode(
              textStyle: TextStyle(
                fontSize: textSize,
                fontWeight: FontWeight.w500,
                color: Color(textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
