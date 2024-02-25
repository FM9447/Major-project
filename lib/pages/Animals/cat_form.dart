import 'package:flutter/material.dart';
import '../image_picker_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat Ad Upload Form',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black),
        ),
      ),
      home: CatAdUploadForm(),
    );
  }
}

class CatAdUploadForm extends StatefulWidget {
  @override
  _CatAdUploadFormState createState() => _CatAdUploadFormState();
}

class _CatAdUploadFormState extends State<CatAdUploadForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController speciesController = TextEditingController();
  TextEditingController breedController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController sexController = TextEditingController();
  TextEditingController colorController = TextEditingController();
  TextEditingController healthController = TextEditingController();
  TextEditingController temperamentController = TextEditingController();
  TextEditingController reasonForSellingController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  String selectedSex = 'Select Sex';
  String selectedColor = 'Brown';
  String selectedUnit = 'Kilogram';

  Future<void> _uploadImage() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ImageUploadPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.pets),
            SizedBox(width: 8),
            Text('Cat'),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                controller: speciesController,
                decoration: InputDecoration(
                  labelText: 'Species Name',
                  hintText: 'Enter species name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter species name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: breedController,
                decoration: InputDecoration(
                  labelText: 'Breed Name',
                  hintText: 'Enter breed name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter breed name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Age',
                  hintText: 'Enter age',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter age';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: priceController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Price',
                  hintText: 'Enter price',
                  prefixText: '₹ ',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter price';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextFormField(
                      controller: weightController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Weight',
                        hintText: 'Enter weight',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter weight';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    flex: 1,
                    child: DropdownButtonFormField<String>(
                      value: selectedUnit,
                      onChanged: (value) {
                        setState(() {
                          selectedUnit = value!;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Unit',
                      ),
                      items: <String>['Kilogram', 'Gram']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: selectedSex,
                onChanged: (value) {
                  setState(() {
                    selectedSex = value!;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Sex',
                ),
                items: <String>['Select Sex', 'Male', 'Female']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: colorController,
                decoration: InputDecoration(
                  labelText: 'Color',
                  hintText: 'Enter color',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter color';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: healthController,
                decoration: InputDecoration(
                  labelText: 'Health',
                  hintText: 'Enter health status',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter health status';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: temperamentController,
                decoration: InputDecoration(
                  labelText: 'Temperament',
                  hintText: 'Enter temperament',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter temperament';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: reasonForSellingController,
                decoration: InputDecoration(
                  labelText: 'Reason for Selling',
                  hintText: 'Enter reason for selling',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter reason for selling';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: descriptionController,
                decoration: InputDecoration(
                  labelText: 'Description',
                  hintText: 'Enter description',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter description';
                  }
                  return null;
                },
                maxLines: 3,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: addressController,
                decoration: InputDecoration(
                  labelText: 'Address',
                  hintText: 'Enter address',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 32),
              ElevatedButton.icon(
                onPressed: _uploadImage,
                icon: Icon(Icons.photo_camera),
                label: Text('Upload Photo'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Process the data
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => NextScreen()));
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Upload',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
