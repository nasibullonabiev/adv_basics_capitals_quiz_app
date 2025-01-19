import 'package:adv_basics_capitals_quiz_app/data/questions_data.dart';
import 'package:adv_basics_capitals_quiz_app/questions_symmary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {required this.chosenAnswers, required this.onRestart, super.key});

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String,Object>> get summaryData{
    final List<Map<String,Object>> summary = [];
    for(var i = 0;i < chosenAnswers.length;i++){
      summary.add({
        'question_index' : i,
        'question' : questions[i].text,
        'correct_answer' : questions[i].answers[0],
        'user_answer' : chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData.where((data){
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered $numCorrectAnswers out of $numTotalQuestions answers correctly!',style: GoogleFonts.lato(
              fontSize: 20,
              color: Color.fromARGB(255, 230, 200, 253),
              fontWeight: FontWeight.bold
            ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30,),
            QuestionSummary(summaryData),
            SizedBox(height: 30,),
            TextButton.icon(
              icon: Icon(Icons.refresh,size: 30,),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white
                ),

                onPressed: onRestart, label: Text('Restart Quiz!'))
          ],
        ),
      ),
    );
  }
}
