import 'package:flutter/material.dart';

class SellPage extends StatefulWidget {
  @override
  _SellPageState createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  List<String> petNames = [
    'Hens',
    'Rabbits',
    'Love birds',
    'Dogs',
    'Cats',
    'Fishes',
    'Doves',
    'Ducks',
    'Parrots',
    'Rats',
    'Snakes',
    'Turtle',
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
      body: Column(
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
              petNames:
                  filteredPetNames.isNotEmpty ? filteredPetNames : petNames,
            ),
          ),
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
    );
  }

  void filterPetNames(String query) {
    setState(() {
      filteredPetNames = petNames
          .where((pet) => pet.toLowerCase().contains(query.toLowerCase()))
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
  final List<String> petNames;

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
              // Add onTap logic if needed
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
                  petNames[index],
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
              // Add onTap logic if needed
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
