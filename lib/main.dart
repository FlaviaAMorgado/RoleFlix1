import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      body: DecoratedBox(
          // BoxDecoration takes the image
          decoration: BoxDecoration(
            // Image set to background of the body
            image: DecorationImage(
                image: AssetImage("img/inicial.png"), fit: BoxFit.cover),
          ),
          child: Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Image(image: AssetImage("img/btnEntrar")),
            ),
          )),
    ));
  }
}
