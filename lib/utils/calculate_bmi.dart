import 'dart:math';

class BmiLogic {
  BmiLogic({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Vượt quá cân nặng trung bình.\n Hãy tập luyện thể thao nhé!!!🏃';
    } else if (_bmi >= 18.5) {
      return 'Chúc mừng bạn rất cân đối. Good job!';
    } else {
      return 'Thấp so với cân nặng trung bình.\nBạn cần ăn uống vào!!!';
    }
  }
}