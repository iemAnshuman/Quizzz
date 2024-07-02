import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:quiz/questions.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  @override
  
  Widget build(context)
  {
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
            
            const Center(
              child: Column(
                children: [
                  Question(),
                ],)
            ),
          ],
        )
        )
      );
  }
}