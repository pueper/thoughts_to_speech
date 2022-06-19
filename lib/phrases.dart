import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:thoughts_to_speech/subjectWidget.dart';


class Phrases extends StatelessWidget {
  Phrases({Key? key}) : super(key: key);

  List<dynamic> data = [];

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as List<dynamic>;

    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text('Phrases'),
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (context, index){
            return SubjectWidget(data[index]["name"], data[index]["image"], data[index]["sound"]);
          }
      ),
    );
  }
}