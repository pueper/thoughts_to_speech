import 'package:flutter/material.dart';
import 'package:thoughts_to_speech/subjectWidget.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {

  List<dynamic> data = [];

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as List<dynamic>;

    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text('Favorites'),
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