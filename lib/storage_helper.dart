import 'dart:io';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:thoughts_to_speech/subject.dart';

void main() async {

  Subject subject1 = Subject("subject1", "assets/images/HelloThere.jpg", "PH-category", true, false, false, false);
  Subject subject2 = Subject("subject2", "assets/images/HelloThere.jpg", "PH-category", true, false, false, false);
  Subject subject3 = Subject("subject3", "assets/images/HelloThere.jpg", "PH-category", true, false, false, false);
  Subject subject4 = Subject("subject4", "assets/images/HelloThere.jpg", "PH-category", true, false, false, false);
  Subject subject5 = Subject("subject5", "assets/images/HelloThere.jpg", "PH-category", false, true, false, false);
  Subject subject6 = Subject("subject6", "assets/images/HelloThere.jpg", "PH-category", false, true, false, false);
  Subject subject7 = Subject("subject7", "assets/images/HelloThere.jpg", "PH-category", false, true, false, false);
  Subject subject8 = Subject("subject8", "assets/images/HelloThere.jpg", "PH-category", false, true, false, false);

  print("start");
  List<dynamic> boop = await retrieveAllSubjects();
  print(boop);
  // await addSubject(subject5);
  boop = await retrieveAllPhrases();
  print(boop);
}

  // returns list off subject objects
  basicRead() async {
    final file = File('assets/data/data.txt');
    String text = await file.readAsString();
    final jsonMap = jsonDecode(text);
    return jsonMap;
  }

  basicWrite(List<dynamic> list) async {
    final file = File('assets/data/data.txt');
    await file.writeAsString(jsonEncode(list));
    print('saved');
  }

  addSubject(Subject subject) async {
    try {
      List<dynamic> list = await basicRead();
      list.add(subject);
      basicWrite(list);
    }catch(e) {
      print("error");
    }
  }

  //returns individual subject matching given name
  retrieveSubject(String name) async {
    try {
      List<dynamic> list = await basicRead();
      for(int i=0;i<list.length;i++) {
        if(list[i]["name"] == name) {
          return list[i];
        }
      }
    } catch(e) {
      print(e);
    }
  }

  removeSubject(String name) async {
    try {
      List<dynamic> list = await basicRead();
      for(int i=0;i<list.length;i++) {
        if(list[i]["name"] == name) {
          list.removeAt(i);
          break;
        }
      }
      basicWrite(list);
    } catch(e) {
      print(e);
    }
  }

  retrieveAllSubjects() async {
    try {
      List<dynamic> list = await basicRead();
      return list;
    } catch(e) {
      print(e);
    }
  }

  retrieveAllObjects() async {
  List<dynamic> objectList = [];
    try {
      List<dynamic> list = await basicRead();
      for(int i=0;i<list.length;i++) {
        if(list[i]["isObject"]) {
          objectList.add(list[i]);
        }
      }
    } catch(e) {
      print(e);
    }
    return objectList;
  }

  retrieveAllPhrases() async {
    List<dynamic> objectList = [];
    try {
      List<dynamic> list = await basicRead();
      for(int i=0;i<list.length;i++) {
        if(list[i]["isPhrase"]) {
          objectList.add(list[i]);
        }
      }
    } catch(e) {
      print(e);
    }
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
    } catch(e) {
      print(e);
    }
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
    } catch(e) {
      print(e);
    }
    return objectList;
  }

  storePersonalInfo() {}

  retrievePersonalInfo() {}