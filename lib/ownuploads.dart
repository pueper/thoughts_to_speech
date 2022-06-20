import 'package:flutter/material.dart';
import 'package:thoughts_to_speech/storage_helper.dart';
import 'package:thoughts_to_speech/subjectWidget.dart';

class OwnUploads extends StatefulWidget {
  const OwnUploads({Key? key}) : super(key: key);

  @override
  State<OwnUploads> createState() => _OwnUploadsState();
}

class _OwnUploadsState extends State<OwnUploads> {

  List<dynamic> data = [];

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as List<dynamic>;

    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text('Own Uploads'),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
            child: IconButton(
              icon: const Icon(Icons.app_registration, size: 30.0),
              onPressed: () {
                Navigator.pushNamed(context, '/Own Uploads');
                Navigator.pop(context);
              },
            ),
          ),
        ],
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