import 'package:grammer_quiz/model/quiz_questions.dart';

var questions = [
  Question('Do not  you dare ________ that vase', [
    Answer('touch', true),
    Answer('to touch', false),
    Answer('touched', false),
    Answer('touching', false),
  ]),
  Question(
    'My brother __________ actively involved  in voluntary work for over two years.',
    [
      Answer('has been being', false),
      Answer('has been worked', false),
      Answer('has been ', true),
      Answer('have been', false),
    ],
  ),
  Question(
    'The most distinctive characteristics of Min Htaw  is ______________.',
    [
      Answer('hospital', false),
      Answer('hospitalization', false),
      Answer('hospitalize', false),
      Answer('hospitality', true),
    ],
  ),
  Question(
    "If your goal is to become a good programmer, you _____ your best.",
    [
      Answer("should be tried", false),
      Answer("would try", false),
      Answer("should try", true),
      Answer("might try", false)
    ],
  ),
  Question(
    'The full moon day of Thadingyut is the gazette day so we ______ the program course.',
    [
      Answer("do not need to attend", true),
      Answer("must not attend", false),
      Answer("cannot attend", false),
      Answer("could not attend", false),
    ],
  ),
  Question(
    'It is hard ____ with others because you are not them.',
    [
      Answer("to empathize", true),
      Answer("empathy", false),
      Answer("empathizing", false),
      Answer("empathize", false),
    ],
  ),
  Question(
    'Find the Adjective Phrase. "The man sitting in front of us is our MSI principal."',
    [
      Answer("sitting in front of us", true),
      Answer("out MSI principal", false),
      Answer("in front of us", false),
      Answer("in front of us", false),
    ],
  ),
  Question(
    'Which one is the verb in the predicate of the sentence? HUAWEI phones made in China are very good.',
    [
      Answer("are good", true),
      Answer("made", false),
      Answer("are", false),
      Answer("are very good", false),
    ],
  ),
  Question(
    'Choose the correct answer. The boy said, "Aunt, go straight and turn left.',
    [
      Answer("The boy told his aunt to go straight and turn left", true),
      Answer("The boy said that his aunt to go straight and turn left", false),
      Answer("The boy told his aunt why she go straight and turn left", false),
      Answer("The boy told his aunt not to go straight and turn left", false),
    ],
  ),
  Question(
    'We enjoyed the trip to Pyin Oo Lwin. It was really _______.',
    [
      Answer("enjoyable", true),
      Answer("enjoy", false),
      Answer("enjoyment", false),
      Answer("enjoys", false),
    ],
  )
];
