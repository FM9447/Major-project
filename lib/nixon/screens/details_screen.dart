import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Genus/nixon/configuration.dart';

class DetailsScreen extends StatelessWidget {
  final String id;
  final Color color;

  DetailsScreen({required this.id, required this.color});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    String petName = '';
    String breed = '';
    String age = '';
    String gender = '';
    String imagePath = '';

    // Assuming dogs is a list of maps containing pet details
    List<Map<String, dynamic>> dogs = [
      {
        'id': '1',
        'name': 'Bruno',
        'breed': 'Beagle',
        'age': '2',
        'gender': 'male',
        'imagePath': 'assets/images/beagle.webp',
      },

      {
        'id': '2',
        'name': 'Miko',
        'breed': 'Labrador Retriever',
        'age': '2',
        'gender': 'male',
        'imagePath': 'assets/images/dog1.png',
      },
      {
        'id': '3',
        'name': 'Edgar',
        'breed': 'Pug',
        'age': '1',
        'gender': 'male',
        'imagePath': 'assets/images/dog2.png',
      },
      {
        'id': '4',
        'name': 'Brutus',
        'breed': 'German Shephard',
        'age': '2',
        'gender': 'male',
        'imagePath': 'assets/images/dog3.png',
      },
      {
        'id': '5',
        'name': 'Thunder',
        'breed': 'Greyhound',
        'age': '2',
        'gender': 'male',
        'imagePath': 'assets/images/dog4.png',
      },
      {
        'id': '6',
        'name': 'Chatus',
        'breed': 'Labrador',
        'age': '2',
        'gender': 'male',
        'imagePath': 'assets/images/dog5.png',
      },
      {
        'id': '7',
        'name': 'Lucky',
        'breed': 'Bull dog',
        'age': '2',
        'gender': 'male',
        'imagePath': 'assets/images/dog6.png',
      },
      {
        'id': '8',
        'name': 'Cheese',
        'breed': 'Doberman',
        'age': '2',
        'gender': 'male',
        'imagePath': 'assets/images/dobe.png',
      },
      {
        'id': '9',
        'name': 'Pixie',
        'breed': 'Cavailer King Charles Spanlei',
        'age': '2',
        'gender': 'female',
        'imagePath': 'assets/images/dog8.png',
      },
      {
        'id': '10',
        'name': 'Bolt',
        'breed': 'German Shephard',
        'age': '2',
        'gender': 'male',
        'imagePath': 'assets/images/dog9.png',
      },
      // Add more pets as needed
    ];

    dogs.forEach((dog) {
      if (dog['id'] == id) {
        petName = dog['name'];
        breed = dog['breed'];
        age = dog['age'];
        gender = dog['gender'];
        imagePath = dog['imagePath'];
      }
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
                    color: color,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Hero(
                            tag: id,
                            child: Image.asset(
                              imagePath,
                              width: size.width * 0.7,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(height: 100),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/images/profile.jpg'),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Anvesha Shandilya',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'Owner',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ],
                              ),
                              Expanded(child: Container()),
                              Text(
                                'Mar 17, 2024',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'This is $petName, a $gender $breed who is $age years old.',
                            style: TextStyle(color: Colors.black54, height: 1.7),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 42, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(CupertinoIcons.chevron_left),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  IconButton(
                    icon: Icon(CupertinoIcons.tray_arrow_down),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 120,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        petName,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        breed,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        age + ' years',
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        size: 18,
                        color: Colors.green,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Bangalore, India',
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Buy'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
