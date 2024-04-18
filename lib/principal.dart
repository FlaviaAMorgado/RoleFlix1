import 'package:flutter/material.dart';
import 'package:roleflix/informativa.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AppRoleFlix",
      home: Scaffold(
      
        body: DecoratedBox(
          // BoxDecoration takes the image
          decoration: const BoxDecoration(
            // Image set to background of the body
            image: DecorationImage(
              image: AssetImage("img/backPrincipal.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Informativa()),
                );
              },
              child: Container(
                width: 1000,
                height: 1000,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('img/peca1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
