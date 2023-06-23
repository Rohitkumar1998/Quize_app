import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz.png',
          width: 300,
          color: Color.fromARGB(150, 210, 207, 207),
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          "Learn FLutter in Fun Way!",
          style: TextStyle(
              fontSize: 25, color: Color.fromARGB(255, 201, 191, 191)),
        ),
        OutlinedButton.icon(
          onPressed: () {
            startQuiz();
          },
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          label: const Text("Start Quiz !"),
          icon: Icon(Icons.arrow_right_alt),
        )
      ],
    ));
  }
}
