import 'package:flutter/material.dart';

class Categorylist extends StatelessWidget {
  const Categorylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    onPressed: () {Navigator.pushNamed(context, '/objects');},
                    child: const Text("Objects"),
                  ),
                )
              ],
            ),
          ],
        )
    );
  }
}