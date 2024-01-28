import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grammer_quiz/data/constants.dart';


class AnswersButton extends StatelessWidget{
   const AnswersButton ({super.key,required this.answer,required this.color});

   final String answer;
  //  final VoidCallback onTap;

   final Color color;

 

  @override
  Widget build(BuildContext context) {

  
  // final List<Answer> answer = questions[0].answerList;

    return Card(
     
     // margin: EdgeInsets.all(8),
     
     color: color ,
     child: ListTile(
       
       title: Text(answer 
       ,
       textAlign: TextAlign.center,
       style: GoogleFonts.roboto(
                  color: backgroundColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
      //  style: const TextStyle(color: backgroundColor,
      //  fontSize: 18,
      //  fontWeight: FontWeight.bold,
      //  ),
     ),
     ),
          );
    
    
  }
}