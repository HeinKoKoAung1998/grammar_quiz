import 'package:flutter/material.dart';
import 'package:grammer_quiz/answers_button.dart';
import 'package:grammer_quiz/data/constants.dart';
import 'package:grammer_quiz/data/questions.dart';
import 'package:grammer_quiz/model/quiz_questions.dart';
import 'package:grammer_quiz/next_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key,required this.finalScore});
   final void Function(int score) finalScore;
  //  bool result ;
  // final void Function(String answer) onSelecterAnswer;

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  var questionLength = questions.length;
  int score = 0;
  

  // List<String> selectedAnswer = [];

  // int index = 0;
  bool isPressed = false;
  bool alreadyAnswered = false;
  
  void answerQuestion(bool value){
    // widget.onSelecterAnswer(selectedAnswers);

    if(alreadyAnswered){
      return;
    }
    if(value == true){
       score++;
         
    }
     setState(() {
      isPressed = true;
      alreadyAnswered = true;
    });
    
  }

  void nextQuestion() {

   if(currentQuestionIndex == questionLength-1){
     widget.finalScore(score);
    //  widget.result = true;
   }
   else if(isPressed){
    setState(() {
      currentQuestionIndex++;
      isPressed = false;
      alreadyAnswered = false;
      // widget.result = false;
    });
   }
   else{
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Please Choose one answer!'),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.symmetric(vertical: 20.0),)
    );
   }
    
    
    
  }

  @override
  Widget build(BuildContext context) {
  final currentQuestion = questions[currentQuestionIndex];
  final List<Answer> answers = currentQuestion.answerList;
  
  // final answer = answers[0].answerText;

    return Container(
      margin: const EdgeInsets.all(30),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Question ${currentQuestionIndex+1} / $questionLength',
              style: const TextStyle(
                color: netural,
                fontSize: 20,
              ),
            ),
            const Divider(
              color: netural,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(30),
              height: 200,
              width: 600,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.yellow),
              child: Text(
                currentQuestion.questionText,
                style: const TextStyle(
                  color: backgroundColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
            
            ),
            const SizedBox(height: 30,),
             ...answers.map((answer){
              return GestureDetector(
                onTap: (){answerQuestion(answer.isCorrect);},
                child: AnswersButton(
                 answer: answer.answerText,
                 color: isPressed ?
                        answer.isCorrect == true ? 
                                            correct : incorrect 
                                            : netural  ,
                                           
                ),
              );
             })
             ,

            const SizedBox(height: 60,),
            
             NextButton(next: nextQuestion,
             ),

              // Text( 'Score : $score'),
          ]
          ),
          
    );
    
  }
}
