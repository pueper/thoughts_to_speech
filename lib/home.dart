import 'package:flutter/material.dart';
import 'storage_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void navigateTo(BuildContext context, String location) async {
    List<dynamic> list;
    if(location=='/categorylist') {
      //TODO
      Navigator.pushNamed(context, '/categorylist');
    } else if(location=='/phrases') {
      list = await retrieveAllPhrases();
      Navigator.pushNamed(context, '/phrases', arguments: list);
    } else if(location=='/favorites') {
      list = await retrieveAllFavorites();
      Navigator.pushNamed(context, '/favorites', arguments: list);
    } else if(location=='/ownuploads') {
      list = await retrieveAllPersonal();
      Navigator.pushNamed(context, '/ownuploads', arguments: list);
    } else if(location=='/newupload') {
      Navigator.pushNamed(context, '/newupload');
    } else if(location=='/personalinfo') {
      Navigator.pushNamed(context, '/personalinfo');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: const Text('Homescreen'),
        ),
        body: Container(
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
                        onPressed: () {
                          navigateTo(context, '/categorylist');
                        },
                        child: Image.asset(
                          'assets/images/Objects.jpg',
                          height: 100,
                          width: 100,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          navigateTo(context, '/phrases');
                        },
                        child: Image.asset(
                          'assets/images/Phrases.jpg',
                          height: 100,
                          width: 100,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          navigateTo(context, '/favorites');
                        },
                        child: Image.asset(
                          'assets/images/Favorites.jpg',
                          height: 100,
                          width: 100,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          navigateTo(context, '/ownuploads');
                        },
                        child: Image.asset(
                          'assets/images/Own_Uploads.jpg',
                          height: 100,
                          width: 100,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          navigateTo(context, '/newupload');
                        },
                        child: Image.asset(
                          'assets/images/New_Uploads.jpg',
                          height: 100,
                          width: 100,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Container(
                        child: ElevatedButton(
                      onPressed: () {
                        navigateTo(context, '/personalinfo');
                      },
                      child: Image.asset(
                        'assets/images/Personal_info.jpg',
                        height: 100,
                        width: 100,
                        fit: BoxFit.fitWidth,
                      ),
                    ))
                  ],
                )
              ],
            )));
  }
}
