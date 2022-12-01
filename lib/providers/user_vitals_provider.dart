import 'package:flutter/material.dart';

class UserVitalsProvider extends ChangeNotifier {
  String gender = '';
  int age = 0;
  String hypertension = '';
  String heart_disease = '';
  String ever_married = '';
  String work_type = '';
  String residence_type = '';
  double avg_glucose_level = 0.00;
  double bmi = 0.0;
  String smoking_status = '';
  double stroke = 0;

  List<String> level = [
    " Low",
    " Medium",
    " High",
  ];

  List<String> messages = [
    "Everything looks fine. Medical checkups can offer additional insights.",
    "Your risk level is moderate. Frequent Medical checkups are suggested.",
    "Your risk level is significantly high. We suggest you to consult a medical professional",
  ];

  void setGender(String _gender) {
    gender = _gender;
    notifyListeners();
  }

  void setAge(int _age) {
    age = _age;
    notifyListeners();
  }

  void setHypertension(String _hypertension) {
    hypertension = _hypertension;
    notifyListeners();
  }

  void setHeartDisease(String _heart_disease) {
    heart_disease = _heart_disease;
    notifyListeners();
  }

  void setEverMarried(String _ever_married) {
    ever_married = _ever_married;
    notifyListeners();
  }

  void setWorkType(String _work_type) {
    work_type = _work_type;
    notifyListeners();
  }

  void setResidenceType(String _residence_type) {
    residence_type = _residence_type;
    notifyListeners();
  }

  void setAvgGlucoseLevel(double _avg_glucose_level) {
    avg_glucose_level = _avg_glucose_level;
    notifyListeners();
  }

  void setBMI(double _bmi) {
    bmi = _bmi;
    notifyListeners();
  }

  void setSmokingStatus(String _smoking_status) {
    smoking_status = _smoking_status;
    notifyListeners();
  }

  void setStroke(double _stroke) {
    stroke = _stroke;
    notifyListeners();
  }

  String get getGender {
    return gender;
  }

  int get getAge {
    return age;
  }

  String get getHypertension {
    return hypertension;
  }

  String get getHeartDisease {
    return heart_disease;
  }

  String get getEverMarried {
    return ever_married;
  }

  String get getWorkType {
    return work_type;
  }

  String get getResidenceType {
    return residence_type;
  }

  double get getAvgGlucoseLevel {
    return avg_glucose_level;
  }

  double get getBMI {
    return bmi;
  }

  String get getSmokingStatus {
    return smoking_status;
  }

  double get getStroke {
    return stroke;
  }

  void clear() {
    gender = '';
    age = 0;
    hypertension = '';
    heart_disease = '';
    ever_married = '';
    work_type = '';
    residence_type = '';
    avg_glucose_level = 0.0;
    bmi = 0.0;
    smoking_status = '';
    stroke = 0;
    notifyListeners();
  }
}
