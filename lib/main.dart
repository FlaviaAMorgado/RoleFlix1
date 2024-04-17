import 'package:flutter/material.dart';
import 'package:roleflix/principal.dart';

void main() {
  runApp(const MaterialApp(
    title: "AppRoleFlix",
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Principal()),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 202, 21, 8), // Define a cor de fundo para vermelho
              ),
            child: Image.asset(
              "img/btnEntrar.png",
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
      )),
    );
  }
}
