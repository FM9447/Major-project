import 'package:flutter/material.dart';
import 'package:Genus/location.dart';

class SellPage extends StatefulWidget {
  @override
  _SellPageState createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  List<Map<String, dynamic>> petNames = [
    {'name': 'Hens', 'emoji': '🐔'},
    {'name': 'Rabbits', 'emoji': '🐰'},
    {'name': 'Love birds', 'emoji': '❤️🐦'},
    {'name': 'Dogs', 'emoji': '🐶'},
    {'name': 'Cats', 'emoji': '🐱'},
    {'name': 'Fishes', 'emoji': '🐟'},
    {'name': 'Doves', 'emoji': '🕊️'},
    {'name': 'Ducks', 'emoji': '🦆'},
    {'name': 'Parrots', 'emoji': '🦜'},
    {'name': 'Rats', 'emoji': '🐀'},
    {'name': 'Snakes', 'emoji': '🐍'},
    {'name': 'Turtle', 'emoji': '🐢'},
  ];

  List<String> plantNames = [
    'Spider Plant',
    'Snake Plant',
    'Peace Lily',
    'ZZ Plant',
    'Pothos',
    'Fiddle Leaf Fig',
    'Monstera Deliciosa',
    'Aloe Vera',
    'Philodendron',
    'Calathea',
    'Roses',
    'Tulips',
    'Daffodils',
  ];

  List<String> filteredPetNames = [];
  List<String> filteredPlantNames = [];

  TextEditingController petSearchController = TextEditingController();
  TextEditingController plantSearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('What are you offering?'),
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Pets:',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: petSearchController,
                    onChanged: (value) {
                      filterPetNames(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'Search Pets',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                Expanded(
                  child: PetNamesList(
                    petNames: filteredPetNames.isNotEmpty
                        ? filteredPetNames
                        : petNames,
                  ),
                ),
              ],
            ),
          ),
          VerticalDivider(), // Add a vertical divider
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Plants:',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: plantSearchController,
                    onChanged: (value) {
                      filterPlantNames(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'Search Plants',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                Expanded(
                  child: PlantNamesList(
                    plantNames: filteredPlantNames.isNotEmpty
                        ? filteredPlantNames
                        : plantNames,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void filterPetNames(String query) {
    setState(() {
      filteredPetNames = petNames
          .where(
              (pet) => pet['name'].toLowerCase().contains(query.toLowerCase()))
          .map<String>((pet) => pet['name'])
          .toList();
    });
  }

  void filterPlantNames(String query) {
    setState(() {
      filteredPlantNames = plantNames
          .where((plant) => plant.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }
}

class PetNamesList extends StatelessWidget {
  final List<dynamic> petNames;

  PetNamesList({required this.petNames});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: petNames.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      LocationPage(itemName: petNames[index]['name']),
                ),
              );
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 20.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    petNames[index]['emoji'],
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: ' ${petNames[index]['name']}',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
        );
      },
    );
  }
}

class PlantNamesList extends StatelessWidget {
  final List<String> plantNames;

  PlantNamesList({required this.plantNames});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: plantNames.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      LocationPage(itemName: plantNames[index]),
                ),
              );
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 20.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  plantNames[index],
                  style: TextStyle(fontSize: 18),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
        );
      },
    );
  }
}
