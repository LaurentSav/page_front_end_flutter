import 'package:flutter/material.dart';
import 'package:test_technique/data/companyColors.dart';
import 'package:test_technique/pages/activitylistpage.dart';
import 'package:test_technique/widget/activitiesCard.dart';
import 'package:test_technique/data/activityData.dart';
import 'models/activity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  List<activity> activities = activityData.getActivity();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Lato'),
      home: Scaffold(
        body:
          Container(
            color: companyColors().deepPurple,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 25, bottom: 25),
                  child: Text("ACTIVITIES", style: TextStyle(color: Colors.white, fontSize: 14)),
                ),
                Expanded(child: activitylistpage())
              ],
            ),
          )
    ));
  }
}

