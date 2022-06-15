import 'dart:io';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:thoughts_to_speech/subject.dart';

void main() async {



  print("start");
  List<dynamic> boop = await retrieveAllSubjects();
  print(boop);
  // await addSubject(subject5);
  boop = await retrieveAllPhrases();
  print(boop);
}

  setupWrite() async {
    Subject subject1 = Subject("subject1", "assets/images/HelloThere.jpg", "assets/audio/test_audio.mp3", "PH-category", true, false, true, false);
    Subject subject2 = Subject("subject2", "assets/images/HelloThere.jpg", "assets/audio/test_audio.mp3", "PH-category", true, false, false, false);
    Subject subject3 = Subject("subject3", "assets/images/HelloThere.jpg", "assets/audio/test_audio.mp3", "PH-category", true, false, true, false);
    Subject subject4 = Subject("subject4", "assets/images/HelloThere.jpg", "assets/audio/test_audio.mp3", "PH-category", true, false, false, false);
    Subject subject5 = Subject("subject5", "assets/images/HelloThere.jpg", "assets/audio/test_audio.mp3", "PH-category", false, true, false, false);
    Subject subject6 = Subject("subject6", "assets/images/HelloThere.jpg", "assets/audio/test_audio.mp3", "PH-category", false, true, true, false);
    Subject subject7 = Subject("subject7", "assets/images/HelloThere.jpg", "assets/audio/test_audio.mp3", "PH-category", false, true, false, false);
    Subject subject8 = Subject("subject8", "assets/images/HelloThere.jpg", "assets/audio/test_audio.mp3", "PH-category", false, true, false, false);
    List<dynamic> list = [subject1, subject2, subject3, subject4, subject5, subject6, subject7, subject8];
    await basicWrite(list);
    // await addSubject(subject5);
    // await addSubject(subject6);
    // await addSubject(subject7);
    // await addSubject(subject8);
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
        if(list[i]["isObject"] && !list[i]["isPersonal"]) {
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
      print("full list:");
      for(int i=0;i<list.length;i++) {
        print(list[i]);
      }
      for(int i=0;i<list.length;i++) {
        if(list[i]["isPhrase"] && !list[i]["isPersonal"]) {
          objectList.add(list[i]);
        }
      }
    } catch(e) {
      print(e);
    }
    print("all phrases:");
    print(objectList);
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
      print("EXCEPTION BABYYYYYY");
      print(e);
    }
    print("personal to retrieve:");
    print(objectList);
    return objectList;
  }

  storePersonalInfo() {}

  retrievePersonalInfo() {}