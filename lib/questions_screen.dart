import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grammar_quiz/answers_button.dart';
import 'package:grammar_quiz/data/constants.dart';
import 'package:grammar_quiz/data/questions.dart';
import 'package:grammar_quiz/model/quiz_questions.dart';
import 'package:grammar_quiz/next_button.dart';


class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key,required this.finalScore});
   final void Function(int score) finalScore;
  

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  var questionLength = questions.length;
  int score = 0;
  

  
  bool isPressed = false;
  bool alreadyAnswered = false;
  
  void answerQuestion(bool value){
  

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
  


    return Container(
      margin: const EdgeInsets.all(30),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
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
                style: GoogleFonts.roboto(
                  color: backgroundColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,

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