import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/model/data_model.dart';
import 'package:hive_flutter/adapters.dart';

ValueNotifier<List<StudentModel>> studentlistnotifier = ValueNotifier([]);

Future<void> addstudent(StudentModel value) async {
  print(value.toString());

  final studentdb = await Hive.openBox<StudentModel>('student_db');
  await studentdb.add(value);
  studentlistnotifier.value.add(value);
  studentlistnotifier.notifyListeners();
}

Future<void> getallstudents() async {
  final student_db = await Hive.openBox<StudentModel>('student_db');
  studentlistnotifier.value.clear();
  studentlistnotifier.value.addAll(student_db.values);
  studentlistnotifier.notifyListeners();
}
