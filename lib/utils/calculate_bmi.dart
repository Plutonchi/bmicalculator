import 'dart:math';

class BmiLogic {
  BmiLogic({this.height, this.weight});

  final int? height;
  final int? weight;

  double? _bmi;

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'Ашыкча салмак';
    } else if (_bmi! > 18.5) {
      return 'Нормал';
    } else {
      return 'Салмагы аз';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'Сиздин дене салмагыңыз нормадан жогору Көбүрөөк машыгууга аракет кылыңыз.\n 💪🚵🚴🏊🏇🏃';
    } else if (_bmi! >= 18.5) {
      return 'Сиздин дене салмагыңыз нормалдуу. Жакшы жумуш!\n 🍇🍉🍍🍒🌽';
    } else {
      return 'Сиздин дене салмагыңыз нормадан төмөн. Сиз дагы бир аз жесе болот.\n 🍲🍱🍳🍗🍒🍎';
    }
  }
}
