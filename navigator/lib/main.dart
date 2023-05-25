import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigator',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to the Second Page'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPage();
            }));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to the First Page'),
          onPressed: () {
            Navigator.pop(context2, MaterialPageRoute(builder: (context2) {
              return FirstPage();
            }));
          },
        ),
      ),
    );
  }
}
