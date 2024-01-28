import 'package:flutter/material.dart';
import 'package:grammer_quiz/data/constants.dart';

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
                  child: const Text(
                    "Next Question",
                    style: TextStyle(
                      fontSize: 16,
                      // fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(48, 32, 77, 1.0)
                    ),
                  ),
                 ),
              );
    
  }
}