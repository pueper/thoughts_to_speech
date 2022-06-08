import 'package:flutter/material.dart';

class Categorylist extends StatelessWidget {
  const Categorylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: ElevatedButton(
                    onPressed: () {Navigator.pushNamed(context, '/objects');},
                    child: Image.asset('assets/images/HelloThere.jpg',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {Navigator.pushNamed(context, '/objects');},
                    child: Image.asset('assets/images/HelloThere.jpg',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,),
                  ),
                )
              ],
            ),
          ],
        )
    );
  }
}