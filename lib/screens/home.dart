import 'package:seefar_mobile_app/screens/exam_result.dart';
import 'package:seefar_mobile_app/services/auth.dart';
import 'package:seefar_mobile_app/models/examResult.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        //backgroundColor: colorBackgroud,
        appBar: AppBar(
          title: Text('Seefar Home'),
          //backgroundColor: colorBar,
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('logout'),
              onPressed: () async {
                await _auth.signOut();
              },
            ),
            FlatButton.icon(
              icon: Icon(Icons.settings),
              label: Text('settings'),
              onPressed: () {
                // TODO manage settings
              },
            )
          ],
        ),
        body: Container(
          /*decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Seefar_LOGO.png'),
              fit: BoxFit.cover,
            ),
          ),*/
          child: Column(
            children: <Widget>[
            Row(children: <Widget>[
              SizedBox(width: 20,),
              Expanded(
                child: RaisedButton(
                  child: Text(
                    'new Exam',
                  ),
                  onPressed: () {
                    print("new Exam");
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ExamResultWidget(
                      examResult: ExamResult(examId:'12345', description: 'LORE IPSUM...', date: DateTime.now(), eye: 1 )
                      ) ) );
                  }
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: RaisedButton(
                  child: Text(
                    'Exams',
                  ),
                  onPressed: () {
                    print('Exams');
                  }
                ),
              ),
              SizedBox(width: 20,),
            ],),
            /*Row(children: <Widget>[
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  color: colorButton,
                  child: Text(
                    'Navigator',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                  }
                ),
              ),

              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  color: colorButton,
                  child: Text(
                    'Settings',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                  }
                ),
              ),
            ],)*/
          ],)
        ),
      );
  }
}