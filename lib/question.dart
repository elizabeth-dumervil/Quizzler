class Question {
  late String questionText;
  late bool questionAnswer;
  late String imageUrl;

  Question(String q, bool a, String i) {
    questionText = q;
    questionAnswer = a;
    imageUrl = i;
  }
}
