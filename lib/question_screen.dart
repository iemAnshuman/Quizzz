import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';
import 'package:quiz/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget{
  const QuestionScreen({required this.onSelectAnswer ,super.key});

  final void Function(String answer) onSelectAnswer;
  
  @override
  State<QuestionScreen> createState(){
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen>{
  var currentQuestionIndex = 0;

  void answered(String selectedAnswer){
    widget.onSelectAnswer(selectedAnswer);

   setState(() {
     currentQuestionIndex++;
   });
  }
  
  @override
  Widget build(context)
  {
    final currentQuestion = questions[currentQuestionIndex];

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
      child: Container(
        color: Colors.transparent,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  currentQuestion.text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    color: const Color.fromARGB(255, 232, 255, 231),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              ...currentQuestion.getShuffledAnswers().map((answer) {
                return AnswerButton(
                  answerText: answer, 
                  onTap: (){
                    answered(answer);
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}