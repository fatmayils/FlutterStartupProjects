import 'Question.dart';

class TestDatas{
  int _questionIndex = 0;
  List<Question> _questionBank = [
    Question(
        questionText: "Titanic gelmiş geçmiş en büyük gemidir", answer: false),
    Question(
        questionText: "Dünyadaki tavuk sayısı insan sayısından fazladır",
        answer: true),
    Question(questionText: "Kelebeklerin ömrü bir gündür", answer: false),
    Question(questionText: "Dünya düzdür", answer: false),
    Question(
        questionText: "Kaju fıstığı aslında bir meyvenin sapıdır",
        answer: false),
    Question(
        questionText: "Fatih Sultan Mehmet hiç patates yememiştir",
        answer: true),
    Question(
        questionText: "Fransızlar 80 demek için, 4 - 20 der", answer: false)
  ];

 String getQuestionText(){
   return _questionBank[_questionIndex].questionText;
 }
  bool getAnswer(){
    return _questionBank[_questionIndex].answer;
  }
  void nextQuestion(){
   if(_questionIndex<_questionBank.length-1)
     {
       _questionIndex++;
     }
  }
  bool isTestFinish()
  {
    return (_questionIndex>=_questionBank.length-1)?true:false;

  }
  void indexReset()
  {
    _questionIndex=0;
  }
}