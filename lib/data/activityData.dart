import 'package:test_technique/models/activity.dart';

class activityData{

  static List<activity> getActivity(){
    return [
      activity(
        title: "Master your passwords",
        image: "assets/image-of-your-choice.jpg",
        type: "Training",
        tags: "Identification / Digital identity",
        points: 35,
        duration: "15min",
        modulesCompleted: "2/3",
      ),
      activity(
        title: "Protect personal data",
        image: "assets/image-of-your-choice.jpg",
        type: "Training",
        tags: "Protection / Gdpr",
        points: 35,
        duration: "15min",
        modulesCompleted: "1/4"
      ),
      activity(
        title: "Harden your social profiles",
        image: "assets/image-of-your-choice.jpg",
        type: "Checkup",
        tags: "Social network / Privacy",
        points: 10,
        duration: "5min",
        modulesCompleted: "0/3",
      ),
      activity(
        title: "Do your part against ransomwares",
        image: "assets/image-of-your-choice.jpg",
        type: "Checkup",
        tags: "Social engineering / Phishing / Vishing",
        points: 10,
        duration: "5min",
        modulesCompleted: "4/4",
      ),
      activity(
        title: "Software updates and installs at home",
        image: "assets/image-of-your-choice.jpg",
        type: "Quiz",
        tags: "Update / Software",
        points: 15,
        duration: "10min",
        modulesCompleted: "2/3",
      ),
      activity(
        title: "Protect your browser at home",
        image: "assets/image-of-your-choice.jpg",
        type: "Quiz",
        tags: "Protection / Update",
        points: 15,
        duration: "10min",
        modulesCompleted: "1/4",
      )



    ];
  }

}