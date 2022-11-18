import 'package:flutter_project/models/student.dart';

class AppState {
  List<Student>? students;
  AppState(this.students);  // argument not required

  AppState.copyWith({
    required AppState prev,
    List<Student>? newStudents,
  }) {
    students = newStudents ?? prev.students;
  }
  AppState.initial() {
    students = [];
  }
}
