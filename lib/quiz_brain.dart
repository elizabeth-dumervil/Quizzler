import 'package:flutter/cupertino.dart';

import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question('La capitale d\'Haiti est Port au Prince.', true, 'haiti'),
    Question(
        'Les animaux qui se nourrissent uniquement de végétaux et de plantes sont des carnivores.',
        false,
        'plante'),
    Question('Le surnom du Roi Louis XIV était le Roi Soleil.', true, 'louis'),
    Question(
        'Santiago est la capitale de la République Dominicaine.', false, 'dr'),
    Question('On obtient le même résultat si on multiplie 3x4 et 4x3.', true,
        'multiplication'),
    Question('Le H est la huitième lettre de l’alphabet.', true, 'h'),
    Question('Les animaux qui ont un squelette sont des invertébrés', false,
        'chien'),
    Question('Antonyme de riche : pauvre', true, 'riche'),
    Question(' Le soleil se lève à l\'ouest.', false, 'soleil'),
    Question('La Tour Eiffel se trouve a New York.', false, 'tour'),
    Question('La Chauve-souris est le seul mammifère qui peut voler.', true,
        'chauve'),
    Question('9*9 font 81.', true, 'multiplication'),
    Question('Les vivipares sont des animaux qui naissent dans un œuf', false,
        'oeuf'),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  String getImageUrl() {
    return _questionBank[_questionNumber].imageUrl;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
