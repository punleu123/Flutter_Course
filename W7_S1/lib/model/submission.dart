import 'package:my_project/W7/W7-S1-PRACTICE-FlutterQuiz/model/quiz.dart';

class Answer {
  final String answer;

  Answer({required this.answer});

  bool isCorrectAnswer(Question question) => question.goodAnswer == answer;
}

class Submission {
  final Map<Question, String> _answers = {};

  int getScore(List<Question> questions) {
    int score = 0;
    for (var question in questions) {
      if (_answers[question] == question.goodAnswer) {
        score++;
      }
    }
    return score;
  }

  void addAnswer(Question question, String answer) {
    if (answer.isEmpty) {
      throw ArgumentError("Answer cannot be empty.");
    }
    _answers[question] = answer;
  }

  void clearAnswers() {
    _answers.clear();
  }

  String? getAnswerFor(Question question) => _answers[question];
}