class Question {
  final String questionText;
  final List<Answer> answerList;
  Question(this.questionText, this.answerList);

  List<Answer> getShuffledAnswers(){
      final shuffledList = List.of(answerList);
      shuffledList.shuffle();
      return shuffledList;
}
}
class Answer {
  final String answerText;
  final bool isCorrect;
  Answer(this.answerText, this.isCorrect);

  

}
  