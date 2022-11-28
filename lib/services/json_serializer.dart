class UserVitals {
  UserVitals({required this.gender, required this.age,
    required this.hypertension, required this.heart_disease,
    required this. ever_married, required this.work_type,
    required this.residence_type, required this.avg_glucose_level,
    required this.bmi, required this.smoking_status});

  final String gender;
  final int age;
  final int hypertension;
  final int heart_disease;
  final String ever_married;
  final String work_type;
  final String residence_type;
  final double avg_glucose_level;
  final double bmi;
  final String smoking_status;
}