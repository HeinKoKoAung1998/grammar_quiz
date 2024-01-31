import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grammar_quiz/data/constants.dart';


class AnswersButton extends StatelessWidget{
   const AnswersButton ({super.key,required this.answer,required this.color});

   final String answer;
   final Color color;

  @override
  Widget build(BuildContext context) {

    return Card(
     
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

     ),
     ),
          );
    
    
  }
}