import 'package:flutter/material.dart';
import 'package:listview_data/animal_page.dart';
import 'package:listview_data/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  static List<String> animalName = [
    'Bear',
    'Camel',
    'Deer',
    'Fox',
    'Kangaroo',
    'Koala',
    'Lion',
    'Tiger'
  ];

  static List<String> animalImagePath = [
    'assets/images/img01.jpg',
    'assets/images/img02.jpg',
    'assets/images/img03.jpg',
    'assets/images/img04.jpg',
    'assets/images/img05.jpg',
    'assets/images/img06.jpg',
    'assets/images/img07.jpg',
    'assets/images/img08.jpg',
  ];

  static List<String> animalLocation = [
    'forest and mountain',
    'dessert',
    'forest',
    'snow mountain',
    'Australia',
    'Australia',
    'Africa',
    'Korea',
  ];

  final List<Animal> animalData = List.generate(
      animalLocation.length,
      (index) => Animal(
          animalName[index], animalImagePath[index], animalLocation[index]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.builder(
        itemCount: animalData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(animalData[index].name),
              leading: SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(animalData[index].imgPath),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        AnimalPage(animal: animalData[index])));
              },
            ),
          );
        },
      ),
    );
  }
}
