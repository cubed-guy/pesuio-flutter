// import 'store.dart';
import 'package:flutter_project/models/student.dart';

abstract class Action {}

class AddStudent extends Action {
  Student newStudent;
  AddStudent({required this.newStudent});
}

class RemoveStudent extends Action {
  String studentSRN;
  RemoveStudent({required this.studentSRN});
}
