import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {required this.isCorrectIndex, required this.questionIndex, super.key});

  final int questionIndex;
  final bool isCorrectIndex;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isCorrectIndex
              ? Colors.green
              : Colors.red,
          borderRadius: BorderRadius.circular(100)),
      child: Text(
        questionNumber.toString(),
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Color.fromARGB(255, 22, 2, 56)),
      ),
    );
  }
}
