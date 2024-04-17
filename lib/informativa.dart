import 'package:flutter/material.dart';

class Informativa extends StatelessWidget {
  const Informativa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Informativa'),
      ),
      body: DecoratedBox(
        // BoxDecoration takes the image
        decoration: BoxDecoration(
          // Image set to background of the body
          image: DecorationImage(
              image: AssetImage("img/backInformativa.png"), fit: BoxFit.cover),
        ),
        child: ElevatedButton(
          onPressed: () {
            // Botão que voltará ´para a tela anterior
          },
          child: const Text('Voltar!'),
        ),
      ),
    );
  }
}
