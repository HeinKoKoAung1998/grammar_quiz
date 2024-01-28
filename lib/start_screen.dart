import 'package:flutter/material.dart';
import 'package:grammer_quiz/data/constants.dart';

class StartScreen extends StatelessWidget{
  const StartScreen ({super.key,required this.switchScreen});

  final Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    
    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 100,),
              Image.asset(
                'assets/images/welcome_transparent.png',
                width: 300
       ,       ),
              const SizedBox(height: 50,),
              const Text(
                'Grammer Quiz Game',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                  letterSpacing: 2,
                  fontStyle: FontStyle.italic   
                ),
              ),
              const SizedBox(height: 60,),
               SizedBox(
                 height: 50,
                 width: 300,
                 child: ElevatedButton(
                  onPressed: switchScreen,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.greenAccent.shade400),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                      )
                    )
                  ),
                  child: const Text(
                    "Play",
                    style: TextStyle(
                      fontSize: 22,
                      // fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: backgroundColor
                    ),
                  ),
                 ),
              )
            ],
          ));
    
  }
}