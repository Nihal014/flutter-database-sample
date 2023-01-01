import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/functions/dbfunctions.dart';
import 'package:flutter_application_1/model/data_model.dart';

class addStudentWidget extends StatelessWidget {
  addStudentWidget({Key? key}) : super(key: key);
  final _namecontroller = TextEditingController();
  final _agecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextFormField(
            controller: _namecontroller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'name'),
          ),
          const SizedBox(
            height: 18,
          ),
          TextFormField(
            controller: _agecontroller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'age'),
          ),
          const SizedBox(
            height: 18,
          ),
          ElevatedButton.icon(
            onPressed: () {
              onaddstudentbuttonclicked();
            },
            icon: const Icon(Icons.add),
            label: const Text('add student'),
          )
        ],
      ),
    );
  }

  Future<void> onaddstudentbuttonclicked() async {
    final _name = _namecontroller.text.trim();
    final _age = _agecontroller.text.trim();
    if (_name.isEmpty || _age.isEmpty) {
      return;
    }
    print('$_age $_name');

    final _student = StudentModel(name: _name, age: _age);
    addstudent(_student);
  }
}
