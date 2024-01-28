class Question {
  final String questionText;
  final List<Answer> answerList;
  Question(this.questionText, this.answerList);
}
class Answer {
  final String answerText;
  final bool isCorrect;
  Answer(this.answerText, this.isCorrect);
}