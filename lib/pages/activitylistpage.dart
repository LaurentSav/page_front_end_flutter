import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_list_view/group_list_view.dart';
import 'package:test_technique/data/activityData.dart';
import 'package:test_technique/models/activity.dart';
import 'package:test_technique/widget/activitiesCard.dart';
import "package:collection/collection.dart";


class activitylistpage extends StatelessWidget {

  List<activity> activities = activityData.getActivity();
  @override
  Widget build(BuildContext context) {

    var groupactivities = activities.groupListsBy((element) => element.type);
    print(groupactivities);

    return Container(
      color: Colors.white,
      child: GroupListView(
        sectionsCount: groupactivities.keys.toList().length,
        countOfItemInSection: (int section){
          return groupactivities.values.toList()[section].length;
        },
        itemBuilder: (BuildContext ctx, IndexPath index){
          return activityCard(
            ac: groupactivities.values.toList()[index.section][index.index],
          );
        },
        groupHeaderBuilder: (BuildContext context, int section){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Text(
              groupactivities.keys.toList()[section],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          );
        },
      )

      /*child: ListView.builder(
          padding: const EdgeInsets.all(2),
          itemCount: activities.length,
          itemBuilder: (BuildContext ctx, int index){
            return activityCard(
                ac: activities[index]
            );
          })*/
    );
  }




}