import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:grammer_quiz/questions_screen.dart';
import 'package:grammer_quiz/result_screen.dart';
import 'package:grammer_quiz/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz ({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
    
  }
}

class _QuizState extends State<Quiz>{
    int finalScore = 0  ;
    // bool checkResult = false;
  // List<String> selectedAnswers = [];
  
  var activeScreen = 'start-screen';
  void switchScreen(){
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(int score){
    
      setState(() {
        activeScreen = 'result-screen';
        finalScore = score;
      });
      // activeScreen = 'result-screen';
  }

  void restart(){
    setState(() {
      finalScore = 0;
      activeScreen = 'question-screen';
    });
  }

  void exit(){
     setState(() {
     activeScreen = 'start-screen';
});
  }

  

  @override
  Widget build(BuildContext context) {

    Widget screenWidget = StartScreen(switchScreen: switchScreen);

    if(activeScreen == 'question-screen'){
      // screenWidget = QuestionsScreen;
      screenWidget =  QuestionsScreen(finalScore: chooseAnswer);
    }
    if(activeScreen == 'result-screen'){
      screenWidget = ResultScreen(score: finalScore,onRestart: restart,onExit: exit,);
    }

    return MaterialApp(
      home: Scaffold(
      body: Container(
        color: const Color.fromRGBO(48, 32, 77, 1.0),
        width: double.infinity,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            screenWidget
          ],
        )
        ),
        
      )
    );
    
  }
}