import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton({required this.answerText, required this.onTap, super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 350,
          maxWidth: 350,
        ),
        child: ElevatedButton(
          onPressed: onTap, 
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 20,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            foregroundColor: Colors.white,
            backgroundColor: Colors.green[900],
          ),
          child: Text(
            answerText, 
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
              color: const Color.fromARGB(255, 215, 246, 216),
              fontSize: 16,
            )),
        ),
      ),
    );
  }
}