//tipando minha lista de question ao invez de usar List<Question>
//typedef Questions = List<Questions>;

class Question {
  final String question;
  final List<String> answer;
  final String correctAnswer;
  const Question({
    required this.question,
    required this.answer,
    required this.correctAnswer,
  });

  factory Question.fromJson(Map json) {
    return Question(
      question: json["question"],
      answer: json["answer"],
      correctAnswer: json["correctAnswer"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "question": question,
      "answer": answer,
      "correctAnswer": correctAnswer,
    };
  }
}
