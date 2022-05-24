enum UserGender {
  Male,
  Female,
}

class User {
  late double _currentWeight;
  late double _goalWeght;
  late UserGender _gender;
  late double _height;

  set currentWeight(double value) {
    _currentWeight = value;
  }

  set goalWeght(double value) {
    _goalWeght = value;
  }

  set height(double value) {
    _height = value;
  }

  set gender(UserGender value) {
    _gender = value;
  }
}
