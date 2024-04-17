import 'package:flutter/material.dart';

class Informativa extends StatelessWidget {
  const Informativa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "AppRoleFlix",
        home: Scaffold(
            appBar: AppBar(
              title: Text('Tela Informativa'),
            ),
            // ignore: prefer_const_constructors
            body: DecoratedBox(
              // BoxDecoration takes the image
              decoration: const BoxDecoration(
                // Image set to background of the body
                image: DecorationImage(
                  image: AssetImage("img/backInformativa.png"),
                  fit: BoxFit.cover,
                ),
              ),
            )));
  }
}
