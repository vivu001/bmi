import 'package:bmi_calculator/screens/result_page.dart';

class Calculator {
  final double _weight;
  final double _height;

  Calculator(this._weight, this._height);

  double calculateBMI() {
    return _weight * 10000 / (_height * _height);
  }

  Result getResultAsEnum() {
    double bmi = calculateBMI();
    if (bmi >= 30) {
      return Result.OBESE;
    } else if (bmi > 25) {
      return Result.OVERWEIGHT;
    } else if (bmi > 18.5) {
      return Result.NORMAL;
    } else
      return Result.UNDERWEIGHT;
  }

  String getAdvice() {
    double bmi = calculateBMI();
    if (bmi >= 30) {
      return 'Talk to your doctor about the health benefits and the risks of treatment options for extreme obesity';
    } else if (bmi > 25) {
      return 'Your ethnicity means you will be at high risk of health issues at a BMI of 27.5 and above.';
    } else if (bmi > 18.5) {
      return 'You’re in the healthy weight range. We suggest you maintain your weight';
    } else
      return 'There may be an underlying medical cause for your weight, or your diet may not be providing you with enough calories. We suggest you discuss this with your GP.';
  }
}
