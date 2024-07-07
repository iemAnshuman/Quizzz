import 'dart:math';

class QuizQuestion {
  const QuizQuestion(this.text, this.answers, this.scores);
  final String text;
  final List<String> answers;
  final List<int> scores;

  List<String> getShuffledAnswers() {
    List<String> shuffledAnswers = List<String>.from(answers); // Create a copy to shuffle
    shuffledAnswers.shuffle(Random()); // Shuffle the answers
    return shuffledAnswers;
  }

  int getScore(String answer) {
    int index = answers.indexOf(answer);
    if (index == -1) {
      // Handle case where answer is not found
      return 0; // Or throw an exception, based on your application's needs
    }
    return scores[index];
  }
}