import 'package:flutter/material.dart';
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
      theme: ThemeData(fontFamily: 'Raleway'),
      home: Scaffold(
        appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
        body: Container(
          child: ListView.builder(
              padding: const EdgeInsets.all(2),
              itemCount: activities.length,
              itemBuilder: (BuildContext ctx, int index){
            return activityCard(
              ac: activities[index]
            );
          })
        )
    ));
  }
}

