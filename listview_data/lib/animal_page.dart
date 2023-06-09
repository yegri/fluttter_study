import 'package:flutter/material.dart';
import 'package:listview_data/model.dart';

class AnimalPage extends StatelessWidget {
  const AnimalPage({super.key, required this.animal});

  final Animal animal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(animal.name),
      ),
      body: Center(
          child: Column(
        children: [Image.asset(animal.imgPath), Text(animal.location)],
      )),
    );
  }
}
