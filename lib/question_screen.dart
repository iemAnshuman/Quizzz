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
    return _QuizState();
  }
}

class _QuizState extends State<QuestionScreen>{
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

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
              'assets/images/forest.jpeg',
              fit: BoxFit.cover,
              ),
            ),

            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  color: Colors.transparent,),),),
            
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    currentQuestion.text,
                    style: GoogleFonts.nunito(
                      color: const Color.fromARGB(255, 232, 255, 231),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
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
                ],),
            ),
          ],
        )
        )
      );
  }
}