import 'package:flutter_project/Redux/store.dart';
import '../models/student.dart';
import 'actions.dart';


AppState reducers(AppState prevState, dynamic action) {
  AppState newState;
  if (action is AddStudent) {
    List<Student> newStudents = prevState.students ?? [];
    newStudents.add(action.newStudent);
    newState = AppState.copyWith(prev: prevState, newStudents: newStudents);
  } else if (action is RemoveStudent) {
    List<Student> newStudents = prevState.students ?? [];
    newStudents = newStudents.where((student) {
      return action.studentSRN != student.getSRN();
    }).toList();
    print("Deleted $newStudents");
    newState = AppState.copyWith(prev: prevState, newStudents: newStudents);
  } else {
    newState = AppState.copyWith(prev: prevState);
  }
  return newState;
}
