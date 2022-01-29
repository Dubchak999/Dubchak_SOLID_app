import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
            onTap: () => setState(() {}),
            child: Container(
              color: Color.fromARGB(
                //or with fromRGBO with fourth arg as _random.nextDouble(),
                Random().nextInt(256),
                Random().nextInt(256),
                Random().nextInt(256),
                Random().nextInt(256),
              ),
              child: const Center(
                child: Text('Hey there!'),
              ),
            )));
  }
}
