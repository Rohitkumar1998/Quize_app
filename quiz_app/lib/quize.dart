import 'package:flutter/material.dart';
import 'package:quiz_app/data/question_of%20_quiz.dart';
import 'package:quiz_app/question_Screen.dart';
// import 'package:flutter/widgets.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/result_screen.dart';

class Quize extends StatefulWidget {
  const Quize({super.key});
  @override
  State<Quize> createState() {
    return _QuizeState();
  }
}

class _QuizeState extends State<Quize> {
  Widget? activeScreen;
  List<String> selectedAnswer = [];
  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        // selectedAnswer = [];
        activeScreen = ResultScreen(
          choosenAnswers: selectedAnswer,
        );
      });
    }
  }

  // void restartQuiz() {
  //   setState(() {
  //     selectedAnswer = [];
  //     activeScreen=QuestionScreen(onSelectedAnswer: selectedAnswer,)
  //   });
  // }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreen(onSelectedAnswer: chooseAnswer);
    });
  }

  @override
  Widget build(context) {
    // if(activeScreen==ResultScreen()){
    //   activeScreen=
    // }
    return MaterialApp(
      home: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color.fromARGB(255, 56, 9, 135), Colors.red],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
              child: activeScreen)),
    );
  }
}
