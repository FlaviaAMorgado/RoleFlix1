import 'package:flutter/material.dart';
import 'package:roleflix/informativa.dart';
import 'package:roleflix/main.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  void main() {
    runApp(const MaterialApp(
      title: "AppRoleFlix",
      home: Principal(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Segunda Tela'),
        ),
        body: DecoratedBox(
            // BoxDecoration takes the image
            decoration: BoxDecoration(
              // Image set to background of the body
              image: DecorationImage(
                  image: AssetImage("img/backPrincipal.png"),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Informativa()),
                  );
                },
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(8, 20))),
                child: Image(image: AssetImage("img/peca1.png")),
              ),
            )));
  }
}
