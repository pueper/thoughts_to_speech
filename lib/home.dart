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
                  onPressed: () {Navigator.pushNamed(context, '/temp');},
                  child: const Text("button 1"),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {Navigator.pushNamed(context, '/temp');},
                  child: const Text("button 2"),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: () {Navigator.pushNamed(context, '/temp');},
                  child: const Text("button 3"),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {Navigator.pushNamed(context, '/temp');},
                  child: const Text("button 4"),
                ),
              )
            ],
          )
        ],
      )
    );
  }
}