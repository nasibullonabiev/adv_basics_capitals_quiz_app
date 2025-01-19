import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.map,
            size: 300,
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            "Learn Capitals of the World!",
            style: GoogleFonts.lato(color: Colors.white, fontSize: 24),
          ),
          SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            icon: Icon(
              Icons.play_circle,
              size: 25,
              color: Colors.white,
            ),
            onPressed: startQuiz,
            label: Text(
              'Start Quiz',
              style: TextStyle(fontSize: 20),
            ),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          )
        ],
      ),
    );
  }
}
