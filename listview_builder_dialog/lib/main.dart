import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => ListViewPageState();
}

class ListViewPageState extends State<ListViewPage> {
  var titleList = [
    'Dentist',
    'Pharmacist',
    'School teacher',
    'IT manager',
    'Account',
    'Lawyer',
    'Hairdresser',
    'Physician',
    'Web developer',
    'Medical Secretary'
  ];

  var imageList = [
    'assets/images/img-01.jpg',
    'assets/images/img-02.jpg',
    'assets/images/img-03.jpg',
    'assets/images/img-04.jpg',
    'assets/images/img-05.jpg',
    'assets/images/img-06.jpg',
    'assets/images/img-07.jpg',
    'assets/images/img-08.jpg',
    'assets/images/img-09.jpg',
    'assets/images/img-10.jpg',
  ];

  var description = [
    '1. There are different types of carreers you can pursue in your life. Which one will it be?',
    '2. There are different types of carreers you can pursue in your life. Which one will it be?',
    '3. There are different types of carreers you can pursue in your life. Which one will it be?',
    '4. There are different types of carreers you can pursue in your life. Which one will it be?',
    '5. There are different types of carreers you can pursue in your life. Which one will it be?',
    '6. There are different types of carreers you can pursue in your life. Which one will it be?',
    '7. There are different types of carreers you can pursue in your life. Which one will it be?',
    '8. There are different types of carreers you can pursue in your life. Which one will it be?',
    '9. There are different types of carreers you can pursue in your life. Which one will it be?',
    '10. There are different types of carreers you can pursue in your life. Which one will it be?',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView',
          style: TextStyle(color: Colors.grey),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: titleList.length,
          itemBuilder: (context, index) {
            return Card(
              child: Row(children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset(imageList[index]),
                )
              ]),
            );
          }),
    );
  }
}
