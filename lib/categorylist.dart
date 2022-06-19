import 'package:flutter/material.dart';
import 'package:thoughts_to_speech/storage_helper.dart';

class Categorylist extends StatefulWidget {
  const Categorylist({Key? key}) : super(key: key);

  @override
  State<Categorylist> createState() => _CategorylistState();
}

class _CategorylistState extends State<Categorylist> {
  List<dynamic> data = [];

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as List<String>;

    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: const Text('Categories'),
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
              return TextButton(
                  onPressed: () async {
                    List<dynamic> list = await retrieveObjectsFromCategory(data[index]);
                    Navigator.pushNamed(context, '/objects', arguments: list);
                  }, 
                  child: Column(children: [
                    Image.asset("assets/images/${data[index]}.jpg", width: 150,),
                    Text(data[index]),
                      ]
                  )
              );
            }
        ),
    );
  }
}