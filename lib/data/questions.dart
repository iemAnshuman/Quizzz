import 'package:quiz/models/quiz_question.dart';
//import 'package:flutter/material.dart';

const questions = [
  QuizQuestion(
    'Over the last 2 weeks, how often have you been bothered by little interest or pleasure in doing things?',
    ['Not at all', 'Several days', 'More than half the days', 'Nearly every day'],
    [0, 1, 2, 3]
  ),
  QuizQuestion(
    'Over the last 2 weeks, how often have you been bothered by feeling down, depressed, or hopeless?',
    ['Not at all', 'Several days', 'More than half the days', 'Nearly every day'],
    [0, 1, 2, 3]
  ),
  QuizQuestion(
    'Over the last 2 weeks, how often have you been bothered by trouble falling or staying asleep, or sleeping too much?',
    ['Not at all', 'Several days', 'More than half the days', 'Nearly every day'],
    [0, 1, 2, 3]
  ),
  QuizQuestion(
    'Over the last 2 weeks, how often have you been bothered by feeling tired or having little energy?',
    ['Not at all', 'Several days', 'More than half the days', 'Nearly every day'],
    [0, 1, 2, 3]
  ),
  QuizQuestion(
    'Over the last 2 weeks, how often have you been bothered by poor appetite or overeating?',
    ['Not at all', 'Several days', 'More than half the days', 'Nearly every day'],
    [0, 1, 2, 3]
  ),
  QuizQuestion(
    'Over the last 2 weeks, how often have you been bothered by feeling bad about yourself — or that you are a failure or have let yourself or your family down?',
    ['Not at all', 'Several days', 'More than half the days', 'Nearly every day'],
    [0, 1, 2, 3]
  ),
  QuizQuestion(
    'Over the last 2 weeks, how often have you been bothered by trouble concentrating on things, such as reading the newspaper or watching television?',
    ['Not at all', 'Several days', 'More than half the days', 'Nearly every day'],
    [0, 1, 2, 3]
  ),
  QuizQuestion(
    'Over the last 2 weeks, how often have you been bothered by moving or speaking so slowly that other people could have noticed? Or the opposite — being so fidgety or restless that you have been moving around a lot more than usual?',
    ['Not at all', 'Several days', 'More than half the days', 'Nearly every day'],
    [0, 1, 2, 3]
  ),
  QuizQuestion(
    'Over the last 2 weeks, how often have you been bothered by thoughts that you would be better off dead, or of hurting yourself in some way?',
    ['Not at all', 'Several days', 'More than half the days', 'Nearly every day'],
    [0, 1, 2, 3]
  ),
];

// Example function to calculate total score
// int calculatePHQ9Score(List<String> answers) {
//   int totalScore = 0;
//   for (int i = 0; i < answers.length; i++) {
//     totalScore += questions[i].getScore(answers[i]);
//   }
//   return totalScore;
// }

// Example usage
// void main() {
//   List<String> userAnswers = [
//     'Several days', // answer to question 1
//     'More than half the days', // answer to question 2
//     'Not at all', // answer to question 3
//     'Nearly every day', // answer to question 4
//     'Several days', // answer to question 5
//     'Not at all', // answer to question 6
//     'Several days', // answer to question 7
//     'More than half the days', // answer to question 8
//     'Not at all' // answer to question 9
//   ];

//   int totalScore = calculatePHQ9Score(userAnswers);
//   print('Total PHQ-9 Score: $totalScore');
// }
