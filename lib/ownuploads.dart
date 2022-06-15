import 'package:flutter/material.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:thoughts_to_speech/storage_helper.dart';

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
      body: Column(
        children: [ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (context, index){
            return Card(
              child: Column(

                children: [
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset(data[index]["image"],
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                  Text(data[index]["name"]),
                ],
              ),
            );
          }
        ),
          ElevatedButton(onPressed: () async {setupWrite();}, child: Text("button"))
      ]
      )
    );
  }
}