import 'package:flutter/material.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';


class Objects extends StatelessWidget {
  const Objects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Objects'),
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                  FullScreenWidget(
                    child: Container(
                      child: Image.asset('assets/images/HelloThere.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.fitWidth,),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}