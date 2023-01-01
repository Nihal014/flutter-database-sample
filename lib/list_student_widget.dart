import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/functions/dbfunctions.dart';

import 'model/data_model.dart';

class liststudentwidget extends StatelessWidget {
  const liststudentwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentlistnotifier,
      builder:
          (BuildContext ctx, List<StudentModel> studentlist, Widget? child) {
        return ListView.separated(
          itemBuilder: (ctx, index) {
            final data = studentlist[index]; 
            return ListTile(
              title: Text(data.name),
              subtitle: Text(data.age),
            );
          },
          separatorBuilder: (ctx, index) {
            return const Divider();
          },
          itemCount: studentlist.length,
        );
      },
    );
  }
}
