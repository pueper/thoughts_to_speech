import 'package:flutter/material.dart';
import 'package:thoughts_to_speech/subjectWidget.dart';


class Objects extends StatefulWidget {
  const Objects({Key? key}) : super(key: key);

  @override
  State<Objects> createState() => _ObjectsState();
}

class _ObjectsState extends State<Objects> {

  List<dynamic> data = [];

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as List<dynamic>;

    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text('Objects'),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
            child: IconButton(
              icon: const Icon(Icons.apps, size: 30.0),
              onPressed: () {
                Navigator.pushNamed(context, '/categorylist');
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