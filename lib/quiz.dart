import 'package:flutter/material.dart';
import 'package:quiz/start_screen.dart';

class QuizScreen extends StatefulWidget{
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState(){
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen>{
  
  var activeScreen = const MyApp();

  void switchScreen(){
      setState((){
        activeScreen = 
      });
  }

  @override
  Widget build(constext){
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

            activeScreen,
          ],
        )
        )
      );
  }
}