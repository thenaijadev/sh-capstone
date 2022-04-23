class Calculate {
  String? grade;

  String calculateGrade(int petersScore) {
    if (petersScore >= 80) {
      grade = "A";
    } else if (petersScore <= 79 && petersScore >= 60) {
      grade = "B";
    } else if (petersScore <= 59 && petersScore >= 50) {
      grade = "C";
    } else if (petersScore <= 49 && petersScore >= 40) {
      grade = "D";
    } else if (petersScore < 40) {
      grade = "F";
    }
    return grade!;
  }
}
