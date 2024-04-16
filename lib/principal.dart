import 'package:flutter/material.dart';
import 'package:roleflix/main.dart';

class Principal extends StatelessWidget {
const Principal({super.key});

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
              child: Column(children: [
                const Text("Dados Recebidos"),
                Image.asset(
                  'img/img02.jpg',
                  width: 220,
                  height: 220,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MainApp()),
                        ); // Botão que voltará ´para a tela anterior
                  },
                  child: const Text('Voltar!'),
                ),
              ]),
            )));
  }
}
