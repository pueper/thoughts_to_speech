import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: const Text('Personal Information'),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.blue[900],
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                      'NAME',
                      style: TextStyle(
                          color: Colors.blue[800],
                          letterSpacing: 1.0,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold
                      )
                  ),
                  const SizedBox(height:5.0),
                  const Text(
                      'Anna de Jong',
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1.0,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                      )
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                      'Emergency Contact',
                      style: TextStyle(
                          color: Colors.blue[800],
                          letterSpacing: 1.0,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold
                      )
                  ),
                  const SizedBox(height:5.0),
                  const Text(
                      'Husband - Hank De Jong',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1.0,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                  const SizedBox(height:5.0),
                  Row(
                      children: const <Widget>[
                        Icon(
                          Icons.phone_android_rounded,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                            '0627423953',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold,
                            )
                        )
                      ]
                  ),
                  Row(
                      children: const <Widget>[
                        Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                            'hdejong@gmail.com',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold,
                            )
                        )
                      ]
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                      'Address',
                      style: TextStyle(
                          color: Colors.blue[800],
                          letterSpacing: 1.0,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold
                      )
                  ),
                  const SizedBox(height:10.0),
                  const Text(
                      'Antarestraat 11, 9711LA',
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1.0,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      )
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                      'Personal Information',
                      style: TextStyle(
                          color: Colors.blue[800],
                          letterSpacing: 1.0,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold
                      )
                  ),
                  const SizedBox(height:5.0),
                  const Text(
                      'I am an Aphasia patient. I am using this app to aid me vocalise my thoughts.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      )
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Extra information'),
                      keyboardType: TextInputType.multiline,
                      maxLines: null, // <-- SEE HERE
                    )
                  ),
                ]
            )
        )
    );
  }
}