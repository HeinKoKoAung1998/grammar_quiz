import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:grammer_quiz/data/constants.dart';

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
          height: 30,
        ),
        Image.asset('assets/images/win.png',width: 200,),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Congratulations',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: netural),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'SCORE : $score ',
          style: const TextStyle(
              color: Colors.yellow, fontSize: 40, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Your answer $score out of 10 questions correctly!',
          style: const TextStyle(
            fontSize: 20,
            color: netural,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
         Row( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              width: 70,
              child: ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  backgroundColor: Colors.yellow
                  
                ),
                onPressed: onRestart,
               child: const Text('Restart',
               style: TextStyle(color: backgroundColor,
               fontSize: 18,fontWeight: FontWeight.bold),
               textAlign: TextAlign.center,))
              
            ),
            const SizedBox(width: 40,),

            SizedBox(
              width: 90,
              child: ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  backgroundColor: Colors.red
                  
                ),
                onPressed: onRestart,
               child: const Text('Exit',
               style: TextStyle(color: backgroundColor,
               fontSize: 18,fontWeight: FontWeight.bold),
               textAlign: TextAlign.center,))
              
            )
          ],

          

          


          // mainAxisAlignment: MainAxisAlignment.center,
          // children: [
          //   // Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
          //   // ElevatedButton(onPressed: (){}, child: Text('Restart')),
          //   ElevatedButton.icon(
          //     style:  ElevatedButton.styleFrom(
          //       backgroundColor: Colors.yellow,
          //       padding: EdgeInsets.all(8)

          //     ),
          //     onPressed: onRestart,
          //     icon: const Icon(
          //       Icons.restart_alt,
          //       color: backgroundColor,
          //     ),
          //     label: const Text(
          //       'Restart',
          //       style: TextStyle(
          //           color: backgroundColor,
          //           fontSize: 20,
          //           fontWeight: FontWeight.bold,
                    
          //           ),
          //     ),
          //   ),
          //   const SizedBox(
          //     width: 40,
          //   ),
          //   // ElevatedButton(onPressed: () {}, child: Text('Exit'))
          //   ElevatedButton.icon(
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.red,
          //       padding: EdgeInsets.all(8)
          //     ),
          //     onPressed: onExit,
          //    icon: const Icon(Icons.exit_to_app,color: backgroundColor,), 
          //    label: const Text('Exit',
          //    style: TextStyle(
          //    color: backgroundColor,
          //    fontSize: 20,
          //    fontWeight: FontWeight.bold
          //    ),
          //    ),
          //    )
          // ],
        )
      ],
    ));
  }
}
