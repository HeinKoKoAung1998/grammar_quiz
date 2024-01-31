

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grammar_quiz/data/constants.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key,
   required this.score,
   required this.onRestart,
   required this.onExit
   });

  final void Function() onRestart;
  final void Function() onExit;

  final int score;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 100,
        ),
        Image.asset('assets/images/win.png',width: 200,),
        const SizedBox(
          height: 20,
        ),
         Text(
          'Congratulations',
        
          style: GoogleFonts.orbitron(
            fontSize: 30,fontWeight: FontWeight.bold,color: netural
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Score : $score ',
          style: GoogleFonts.montserratAlternates(
            color: Colors.yellow,fontSize: 40,fontWeight: FontWeight.bold
          ),

        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Your answer $score out of 10 questions correctly!',
           style: GoogleFonts.kalam(
            fontSize: 15,
            color: netural
           ),textAlign: TextAlign.center,
          

        ),
        const SizedBox(
          height: 160,
        ),
         Row( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              width: 100,
              child: ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.grey,
                  padding: const EdgeInsets.all(10),
                  backgroundColor: Colors.yellow
                  
                ),
                onPressed: onRestart,
               child:  Text('Restart',
               style: GoogleFonts.orbitron(
                 color: backgroundColor,
                 fontSize: 18,fontWeight: FontWeight.bold
               ),

               textAlign: TextAlign.center,))
              
            ),
            const SizedBox(width: 80,),

            SizedBox(
              width: 120,
              child: ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.grey,
                  padding: const EdgeInsets.all(10),
                  backgroundColor: Colors.red
                  
                ),
                onPressed: onExit,
               child:  Text('Exit',
               style: GoogleFonts.orbitron(
                 color: backgroundColor,
                 fontSize: 18,fontWeight: FontWeight.bold
               ),

               textAlign: TextAlign.center,))
              
            )
          ],
         
        )
      ],
    ));
  }
}
