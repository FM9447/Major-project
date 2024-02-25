import 'package:flutter/material.dart';
import 'package:secondapp/pages/Animals/rabbit_form.dart';
import 'dart:ui';
import 'Animals/dog_form.dart';
import 'Animals/cat_form.dart';
import 'Animals/fish_form.dart';
import 'Animals/bird_form.dart';
import 'Animals/rabbit_form.dart';
import 'Animals/rodents_form.dart';
import 'Animals/ferrets_form.dart';
import 'Animals/reptiles_form.dart';
import 'Animals/amphibians_form.dart';
import 'Animals/chinchillas_form.dart';
import 'plants/plant_form.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SellPage(),
  ));
}

class SellPage extends StatefulWidget {
  @override
  _SellPageState createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  List<String> petNames = [
    'Dogs',
    'Cats',
    'Rabbits',
    'Rodents',
    'Ferrets',
    'Chinchillas',
    'Birds',
    'Fish',
    'Reptiles',
    'Amphibians',
  ];

  List<String> plantNames = [
    'Roses',
    'Tulips',
    'Lilies',
    'Lotus',
    'Hydrangeas',
    'Sunflowers',
    'Orchids',
    'Lavender',
    'Water Lily',
    'Peonies',
    'Calathea',
    'Water Hyacinth',
    'Daffodils',
    'Chrysanthemums',
    'Fiddle Leaf Fig',
    'Snake Plant',
    'Pothos',
    'ZZ Plant',
    'Cacti',
    'Bonsai Trees',
    'Herbs',
    'Succulents',
    'Air Plants',
    'Water Plants',
    'Others',
  ];

  List<String> filteredPetNames = [];
  List<String> filteredPlantNames = [];
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BackgroundShapes(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      'What you have to offer?',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: searchController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.search, color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.3),
                      ),
                      onChanged: (value) {
                        filterPetNames(value);
                        filterPlantNames(value);
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Kingdom Animalia',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  PetNamesList(
                    petNames: filteredPetNames.isNotEmpty ? filteredPetNames : petNames,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Kingdom Plantae',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  PlantNamesList(
                    plantNames: filteredPlantNames.isNotEmpty ? filteredPlantNames : plantNames,
                  ),
                  SizedBox(height: 100), // Additional space at the bottom for better scrolling
                ],
              ),
            ),
          ],
        ),
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

  static void navigateToItemPage(BuildContext context, String itemName) {
    switch (itemName) {
      case 'Dogs':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DogAdUploadForm()), // Navigate to DogForm.dart
        );
        break;
      case 'Rabbits':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RabbitAdUploadForm()), // Navigate to CatForm.dart
        );
        break;

      case 'Rodents':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RodentsAdUploadForm()), // Navigate to DogForm.dart
        );
        break;

      case 'Ferrets':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FerretsAdUploadForm()), // Navigate to DogForm.dart
        );
        break;

      case 'Chinchillas':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChinchillasAdUploadForm()), // Navigate to DogForm.dart
        );
        break;

      case 'Birds':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BirdAdUploadForm()), // Navigate to DogForm.dart
        );
        break;


      case 'Fish':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FishAdUploadForm()), // Navigate to DogForm.dart
        );
        break;

      case 'Reptiles':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ReptilesAdUploadForm()), // Navigate to DogForm.dart
        );
        break;

      case 'Amphibians':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AmphibiansAdUploadForm()), // Navigate to DogForm.dart
        );
        break;

      case 'Cats':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CatAdUploadForm()), // Navigate to DogForm.dart
        );
        break;



      default:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PlantAdUploadForm()),
        );
    }
  }
}

class PetNamesList extends StatelessWidget {
  final List<String> petNames;

  PetNamesList({required this.petNames});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: petNames.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            _SellPageState.navigateToItemPage(context, petNames[index]);
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              petNames[index],
              style: TextStyle(fontSize: 18, color: Colors.white),
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
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: plantNames.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            _SellPageState.navigateToItemPage(context, plantNames[index]);
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              plantNames[index],
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}

class BackgroundShapes extends StatefulWidget {
  const BackgroundShapes({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<BackgroundShapes> createState() => _BackgroundShapesState();
}

class _BackgroundShapesState extends State<BackgroundShapes>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_controller);
    _controller.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/futuristic_background.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return CustomPaint(
                painter: BackgroundPainter(_animation),
                child: Container(),
              );
            },
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
            child: Container(
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          widget.child,
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class BackgroundPainter extends CustomPainter {
  final Animation<double> animation;

  const BackgroundPainter(this.animation);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.maskFilter = const MaskFilter.blur(
      BlurStyle.normal,
      30,
    );
    drawShape1(canvas, size, paint);
    drawShape2(canvas, size, paint); // Uncomment if needed
    drawShape3(canvas, size, paint); // Uncomment if needed
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  void drawShape1(Canvas canvas, Size size, Paint paint) {
    paint.color = Colors.orange;
    Path path = Path();

    path.moveTo(size.width, 0);
    path.quadraticBezierTo(
      size.width / 2,
      size.height / 2,
      -100,
      size.height / 4,
    );

    final offset = getOffset(path);
    canvas.drawCircle(offset, 150, paint);
  }

  void drawShape2(Canvas canvas, Size size, Paint paint) {
    paint.color = Colors.purple;
    Path path = Path();

    path.moveTo(size.width, size.height);
    path.quadraticBezierTo(
      size.width / 2,
      size.height / 2,
      size.width * 0.9,
      size.height * 0.9,
    );

    final offset = getOffset(path);
    canvas.drawCircle(offset, 250, paint);
  }

  void drawShape3(Canvas canvas, Size size, Paint paint) {
    paint.color = Colors.blue;
    Path path = Path();

    path.moveTo(0, 0);
    path.quadraticBezierTo(
      0,
      size.height,
      size.width / 3,
      size.height / 3,
    );

    final offset = getOffset(path);
    canvas.drawCircle(offset, 250, paint);
  }

  Offset getOffset(Path path) {
    final pms = path.computeMetrics(forceClosed: false).elementAt(0);
    final length = pms.length;
    final offset = pms.getTangentForOffset(length * animation.value)!.position;
    return offset;
  }
}
