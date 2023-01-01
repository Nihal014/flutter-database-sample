import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/add_student_widget.dart';
import 'package:flutter_application_1/functions/dbfunctions.dart';
import 'package:flutter_application_1/list_student_widget.dart';

class screenhome extends StatelessWidget {
  const screenhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getallstudents();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          addStudentWidget(),
          const Expanded(child: liststudentwidget())
        ],
      )),
    );
  }
}
