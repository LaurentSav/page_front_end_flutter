import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_technique/data/companyColors.dart';
import 'package:test_technique/models/activity.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';


class activityCard extends StatelessWidget {

  activity ac;
  activityCard({this.ac});


  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width*0.95;
    double c_height = MediaQuery.of(context).size.height*0.25;

    return Container(
      height: c_height,
      width: c_width,
      child: Card(
        child: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(padding: EdgeInsets.all(10),child: Image.asset(ac.image, width: 100, height: 100, fit: BoxFit.fitWidth),),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(bottom: 4), child: Text(ac.tags, maxLines: 1, style: TextStyle(color: companyColors().lightGrey))),
                      Text(ac.title, maxLines: 2, style: TextStyle(color: companyColors().deepPurple, fontSize: 20, fontWeight: FontWeight.bold)),
                      Padding(padding: EdgeInsets.only(top: 5, bottom: 5), child:
                        Row(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.timer, size: 16, color: companyColors().lightGrey),
                                Text(ac.duration, style: TextStyle(color: companyColors().lightGrey, fontSize: 12)),
                              ],
                            ),
                            SizedBox(width: 10,),
                            Row(
                              children: [
                                Icon(Icons.star_outline_rounded, size: 16, color: companyColors().yellow),
                                Text(ac.points.toString() + "pts", style: TextStyle(color: companyColors().yellow, fontSize: 12))
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(ac.modulesCompleted, style: TextStyle(color: companyColors().lightPurple, fontSize: 14)),
                          SizedBox(width: 10,),
                          StepProgressIndicator(
                            totalSteps: int.parse(ac.modulesCompleted.split("/")[1]),
                            currentStep: int.parse(ac.modulesCompleted.split("/")[0]),
                            size: 6,
                            padding: 0,
                            selectedColor: companyColors().lightPurple,
                            unselectedColor: companyColors().lightGrey,
                            roundedEdges: Radius.circular(10),

                          ),
                        ],
                      ),

                    ],
                  ),
                )
              )
            ],
          ),

        )
      ),
    );
  }
}
