import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_technique/data/activityData.dart';
import 'package:test_technique/models/activity.dart';

class activitylistpage extends StatelessWidget {

  List<activity> activities = activityData.getActivity();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(

        )
      )

    );
  }




}