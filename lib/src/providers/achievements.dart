import 'package:flutter/cupertino.dart';
import 'package:vtb_hack_mobile/src/achievements/models/achievement_model.dart';

class AchievementData {
  AchievementData(this.achievement, {shown});
  bool shown = false;
  final AchievementModel achievement;
}

class Achievements with ChangeNotifier {
  List<AchievementData> achievements = [];

  void addAchievement(AchievementModel achievement) {
    AchievementData data = AchievementData(achievement);
    achievements.add(data);
    notifyListeners();
  }

  void removeAchievement(AchievementModel achievement) {
    for (int i = 0; i < achievements.length; i++) {
      if (achievements[i].achievement.title == achievement.title) {
        achievements.removeAt(i);
        notifyListeners();
      }
    }
  }
}
