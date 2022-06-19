import 'dart:io';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:thoughts_to_speech/subject.dart';

enum SubjectTypes {
  isObject,
  isPhrase,
  isFavorite,
  isPersonal
}

  setupWrite() async {
    Subject subject1 = Subject("tv", "assets/images/Entertainment/tv.jpg", "assets/audio/test_audio.mp3", "entertainment", true, false, false, false);
    Subject subject2 = Subject("youtube", "assets/images/Entertainment/youtube.png", "assets/audio/test_audio.mp3", "entertainment", true, false, false, false);
    Subject subject3 = Subject("pineapple", "assets/images/food/pineapple.jpg", "assets/audio/test_audio.mp3", "food", true, false, false, false);
    Subject subject10 = Subject("apple", "assets/images/food/apple.jpg", "assets/audio/test_audio.mp3", "food", true, false, false, false);
    Subject subject11 = Subject("banana", "assets/images/food/banana.jpg", "assets/audio/test_audio.mp3", "food", true, false, false, false);
    Subject subject12 = Subject("cocktail", "assets/images/food/cocktailglass.jpg", "assets/audio/test_audio.mp3", "food", true, false, false, false);
    Subject subject13 = Subject("coffee", "assets/images/food/coffecup.jpg", "assets/audio/test_audio.mp3", "food", true, false, false, false);
    Subject subject14 = Subject("eat", "assets/images/food/eatingtimes.jpg", "assets/audio/test_audio.mp3", "food", false, true, false, false);
    Subject subject15 = Subject("egg", "assets/images/food/egg_broken.png", "assets/audio/test_audio.mp3", "food", true, false, false, false);
    Subject subject16 = Subject("fork", "assets/images/food/fork.jpg", "assets/audio/test_audio.mp3", "food", true, false, false, false);
    Subject subject17 = Subject("fruit", "assets/images/food/fruit.png", "assets/audio/test_audio.mp3", "food", true, false, true, false);
    Subject subject18 = Subject("glass", "assets/images/food/glass.jpg", "assets/audio/test_audio.mp3", "food", true, false, false, false);
    Subject subject19 = Subject("kitchen utensils", "assets/images/food/kitchenutensils.jpg", "assets/audio/test_audio.mp3", "food", true, false, false, false);
    Subject subject20 = Subject("knife", "assets/images/food/knife.jpg", "assets/audio/test_audio.mp3", "food", true, false, false, false);
    Subject subject21 = Subject("milk", "assets/images/food/milk-300x300.png", "assets/audio/test_audio.mp3", "food", true, false, false, false);
    Subject subject22 = Subject("mug", "assets/images/food/mug-300x300.png", "assets/audio/test_audio.mp3", "food", true, false, false, false);
    Subject subject23 = Subject("plate", "assets/images/food/plate.jpg", "assets/audio/test_audio.mp3", "food", true, false, false, false);
    Subject subject24 = Subject("spoon", "assets/images/food/spoon.jpeg", "assets/audio/test_audio.mp3", "food", true, false, false, false);
    Subject subject25 = Subject("rice", "assets/images/food/white_rice.jpg", "assets/audio/test_audio.mp3", "food", true, false, true, false);
    Subject subject26 = Subject("pineapple", "assets/images/food/.jpg", "assets/audio/test_audio.mp3", "food", true, false, false, false);
    Subject subject4 = Subject("couch", "assets/images/House/couch.jpg", "assets/audio/test_audio.mp3", "house", true, false, false, false);
    Subject subject5 = Subject("table", "assets/images/House/table.jpg", "assets/audio/test_audio.mp3", "house", true, false, false, false);
    Subject subject9 = Subject("bus", "assets/images/Travel/bus.jpg", "assets/audio/test_audio.mp3", "travel", true, false, false, false);
    Subject subject6 = Subject("car", "assets/images/Travel/car.jpg", "assets/audio/test_audio.mp3", "travel", true, false, false, false);
    Subject subject7 = Subject("luggage", "assets/images/Travel/luggage.jpg", "assets/audio/test_audio.mp3", "travel", true, false, false, false);
    Subject subject8 = Subject("travel", "assets/images/Travel/travel.jpg", "assets/audio/test_audio.mp3", "travel", false, true, false, false);
    List<dynamic> list = [subject1, subject2, subject3, subject4, subject5, subject6, subject7, subject8, subject9, subject10, subject11, subject12, subject13, subject14,
                          subject15, subject16, subject17, subject18, subject19, subject20, subject21, subject22, subject23, subject24, subject25, subject26];
    await basicWrite(list);
  }

  // returns list off subject objects
  basicRead() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/data.txt');
    String text = await file.readAsString();
    final jsonMap = jsonDecode(text);
    return jsonMap;
  }

  basicWrite(List<dynamic> list) async {
    final data = jsonEncode(list);
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/data.txt');
    await file.writeAsString(data);
  }

  addSubject(Subject subject) async {
    try {
      List<dynamic> list = await basicRead();
      list.add(subject);
      basicWrite(list);
    }catch(e) {}
  }

  //returns individual subject matching given name
  retrieveSubject(String name) async {
    try {
      List<dynamic> list = await basicRead();
      for(int i=0;i<list.length;i++) {
        if(list[i].name == name) {
          return list[i];
        }
      }
    } catch(e) {
      return Subject("", "", "", "", false, false, false, false);
    }
  }

  removeSubject(String name) async {
    try {
      List<dynamic> list = await basicRead();
      for(int i=0;i<list.length;i++) {
        if(list[i].name == name) {
          list.removeAt(i);
          break;
        }
      }
      basicWrite(list);
    } catch(e) {}
  }

  updateWidget(String name, SubjectTypes type) async {
    try {
      Subject subject;
      List<dynamic> list = await basicRead();
      for(int i=0;i<list.length;i++) {
        if(list[i]["name"] == name) {
          subject = Subject.fromJson(list[i]);
          if(type==SubjectTypes.isObject || type==SubjectTypes.isPhrase) {
            subject.isObject = !subject.isObject;
            subject.isPhrase = !subject.isPhrase;
          } else if(type==SubjectTypes.isFavorite) {
            subject.isFavorite = !subject.isFavorite;
          } else if(type==SubjectTypes.isPersonal) {
            subject.isPersonal = !subject.isPersonal;
          }
          list[i] = subject.toJson();
          break;
        }
      }
      await basicWrite(list);
    } catch(e) {}
  }

  retrieveAllSubjects() async {
    try {
      List<dynamic> list = await basicRead();
      return list;
    } catch(e) {
      return [];
    }
  }

  retrieveAllObjects() async {
  List<dynamic> objectList = [];
    try {
      List<dynamic> list = await basicRead();
      for(int i=0;i<list.length;i++) {
        if(list[i]["isObject"] && !list[i]["isPersonal"]) {
          objectList.add(list[i]);
        }
      }
    } catch(e) {}
    return objectList;
  }

  retrieveAllPhrases() async {
    List<dynamic> objectList = [];
    try {
      List<dynamic> list = await basicRead();
      for(int i=0;i<list.length;i++) {
        if(list[i]["isPhrase"] && !list[i]["isPersonal"]) {
          objectList.add(list[i]);
        }
      }
    } catch(e) {}
    return objectList;
  }

  retrieveAllFavorites() async {
    List<dynamic> objectList = [];
    try {
      List<dynamic> list = await basicRead();
      for(int i=0;i<list.length;i++) {
        if(list[i]["isFavorite"]) {
          objectList.add(list[i]);
        }
      }
    } catch(e) {}
    return objectList;
  }

  retrieveAllPersonal() async {
    List<dynamic> objectList = [];
    try {
      List<dynamic> list = await basicRead();
      for(int i=0;i<list.length;i++) {
        if(list[i]["isPersonal"]) {
          objectList.add(list[i]);
        }
      }
    } catch(e) {}
    return objectList;
  }

  retrieveAllCategories() async {
    List<String> categoryList = [];
    try {
      List<dynamic> list = await basicRead();
      list.sort((a, b) => a["category"].compareTo(b["category"]));
      categoryList.add(list[0]["category"]);
      for(int i=1;i<list.length;i++) {
        if(list[i]["category"] !=categoryList.last && list[i]["isObject"]) {
          categoryList.add(list[i]["category"]);
        }
      }
    } catch(e) {}
    return categoryList;
  }

  retrieveObjectsFromCategory(String categoryName) async {
    List<dynamic> objectList = [];
    try {
      List<dynamic> list = await basicRead();
      for(int i=0;i<list.length;i++) {
        if(list[i]["isObject"] && list[i]["category"]==categoryName) {
          objectList.add(list[i]);
        }
      }
    } catch(e) {}
    return objectList;}

  storePersonalInfo() {}

  retrievePersonalInfo() {}