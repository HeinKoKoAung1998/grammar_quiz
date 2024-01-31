import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grammar_quiz/data/constants.dart';

class NextButton extends StatelessWidget{
  const NextButton ({super.key,required this.next});

  final void Function() next;

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
                 height: 40,
                 width: 300,
                 child: ElevatedButton(
                  onPressed: next,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(netural),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                      )
                    )
                  ),
                  child:  Text(
                    "Next Question",
                    style: GoogleFonts.orbitron(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade900
                    ),

                  ),
                 ),
              );
    
  }
}