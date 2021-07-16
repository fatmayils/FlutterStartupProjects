import 'package:life_expectancy/user_data.dart';

class Calculate {
  UserData _userData;
  Calculate(this._userData);
  int? calculate() {
    double result;
    result = 90+_userData.numberOfDaysOfSport! - _userData.smokingCigarette!;
    result = result + (_userData.height! / _userData.weight!);
    if (_userData.chosenGender == "KADIN") {
      return (result + 3).round();
    } else {
      return (result).round();
    }
  }
}
