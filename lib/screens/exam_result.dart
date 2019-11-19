
import 'package:flutter/material.dart';
import 'package:seefar_mobile_app/models/examResult.dart';

class ExamResultWidget extends StatelessWidget {

  final ExamResult examResult;

  ExamResultWidget({ this.examResult });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Description'),
        Text(examResult.description),
      ],
      
    );
  }
}