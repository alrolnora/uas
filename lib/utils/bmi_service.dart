class BMICalculatorServices {
  BMICalculatorServices({
    required this.height,
    required this.weight,
  });
  final int height;
  final int weight;
  double? _bmi;

  String calculateBMI() {
    _bmi = weight / ((height / 100) * (height / 100));
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! < 18.5) {
      return 'Kurus';
    } else if (_bmi! >= 18.5 && _bmi! < 25) {
      return 'Normal';
    } else if (_bmi! >= 25 && _bmi! <= 30) {
      return 'Kegemukkan';
    } else {
      return 'Obesitas';
    }
  }

  String getRecomendation() {
    if (_bmi! < 18.5) {
      return 'Saran : Perlu menambah berat badan.';
    } else if (_bmi! >= 18.5 && _bmi! < 25) {
      return 'Berat badan Anda sudah ideal.';
    } else if (_bmi! >= 25 && _bmi! <= 30) {
      return 'Saran : Anda perlu mengurangi berat badan.';
    } else {
      return 'Saran : Anda mengalami obesitas, segera konsultasikan dengan dokter.';
    }
  }
}
