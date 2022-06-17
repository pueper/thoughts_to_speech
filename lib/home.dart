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
        extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color(0x64000000),
        elevation: 0,
        title: const Text("Thoughts To Speach"),
        actions: const [
          Icon(Icons.more_vert)
        ],
      ),

        body: Container(
            padding: const EdgeInsets.only(top: 25.0),
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
                      child: TextButton(
                        onPressed: () {
                          navigateTo(context, '/categorylist');
                        },
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey, width: 4),
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/Objects.jpg'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {
                          navigateTo(context, '/phrases');
                        },
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey, width: 4),
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/Phrases.jpg'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: TextButton(
                        onPressed: () {
                          navigateTo(context, '/favorites');
                        },
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey, width: 4),
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/Favorites.jpg'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {
                          navigateTo(context, '/ownuploads');
                        },
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey, width: 4),
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/Own_Uploads.jpg'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: TextButton(
                        onPressed: () {
                          navigateTo(context, '/newupload');
                        },
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey, width: 4),
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/New_Uploads.jpg'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {
                          navigateTo(context, '/personalinfo');
                        },
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey, width: 4),
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/Personal_info.jpg'),
                                  fit: BoxFit.cover
                              )),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
        )
    );
  }
}
