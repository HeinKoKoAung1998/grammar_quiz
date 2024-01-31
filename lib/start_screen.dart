import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grammar_quiz/data/constants.dart';

class StartScreen extends StatelessWidget{
  const StartScreen ({super.key,required this.switchScreen});

  final Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    
    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 130,),
              Image.asset(
                'assets/images/welcome_transparent.png',
                width: 300
       ,       ),
              const SizedBox(height: 50,),
               Text(
                'Grammar Quiz',
                style: GoogleFonts.blackOpsOne(
                  fontSize: 30,
                  // fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                  letterSpacing: 2,
                  
                ),

              ),
              const SizedBox(height: 60,),
               SizedBox(
                 height: 50,
                 width: 300,
                 child: ElevatedButton(
                  onPressed: switchScreen,
                  style: ButtonStyle(
                    
                    backgroundColor: MaterialStateProperty.all(Colors.yellow.shade400),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                      )
                    )
                  ),
                  child:  Text(
                    "Start",
                    style : GoogleFonts.orbitron(
                      fontSize: 22,
                      color: backgroundColor,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold
                    )      
                  ),
                 ),
              )
            ],
          ));


 
    
  }
}