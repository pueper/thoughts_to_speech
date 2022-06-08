import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text('Homescreen'),
      ),

      body:Container(
          width: double.infinity,
          decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/images/BackgroundImage.jpg"),
          fit: BoxFit.cover),
          ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: () {Navigator.pushNamed(context, '/categorylist');},
                  child: Image.asset('assets/images/Objects.jpg',
                    height: 100,
                    width: 100,
                    fit: BoxFit.fitWidth,),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {Navigator.pushNamed(context, '/phrases');},
                  child: Image.asset('assets/images/Phrases.jpg',
                    height: 100,
                    width: 100,
                    fit: BoxFit.fitWidth,),
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
                  child: Image.asset('assets/images/Favorites.jpg',
                    height: 100,
                    width: 100,
                    fit: BoxFit.fitWidth,),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {Navigator.pushNamed(context, '/ownuploads');},
                  child: Image.asset('assets/images/Own_Uploads.jpg',
                    height: 100,
                    width: 100,
                    fit: BoxFit.fitWidth,),
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
                  child: Image.asset('assets/images/New_Uploads.jpg',
                    height: 100,
                    width: 100,
                    fit: BoxFit.fitWidth,),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: ( ) {Navigator.pushNamed(context, '/personalinfo');},
                  child: Image.asset('assets/images/Personal_info.jpg',
                    height: 100,
                    width: 100,
                    fit: BoxFit.fitWidth,),
                )
              )
            ],
          )
        ],
      )
    )
    );
  }
}