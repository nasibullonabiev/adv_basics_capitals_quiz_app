class QuizQuestion{
  final String text;
  final List<String> answers;
  final String imageUrl;

  const QuizQuestion(this.text,this.answers,this.imageUrl);

  List<String> get shuffledAnswers{
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}