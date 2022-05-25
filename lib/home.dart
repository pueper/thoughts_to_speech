import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Homescreen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: () {Navigator.pushNamed(context, '/objects');},
                  child: const Text("Objects"),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {Navigator.pushNamed(context, '/phrases');},
                  child: const Text("Phrases"),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: () {Navigator.pushNamed(context, '/favorites');},
                  child: const Text("Favorites"),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {Navigator.pushNamed(context, '/ownuploads');},
                  child: const Text("Own Uploads"),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: () {Navigator.pushNamed(context, '/newupload');},
                  child: const Text("New Upload"),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: ( ) {Navigator.pushNamed(context, '/personalinfo');},
                  child: const Text("Personal information")
                )
              )
            ],
          )
        ],
      )
    );
  }
}