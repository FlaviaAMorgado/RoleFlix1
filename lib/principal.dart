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
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("img/backPrincipal.png"),
              fit: BoxFit.cover,
            ),
          ),

          //CONTAINER PECA1
          child: Column(
            children: [
              const SizedBox(height: 190),  // Adiciona espaçamento no topo da tela
              Center(
                child: Column(
                  children: [
                    GestureDetector(   //transforma td as widgets em btn 
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Informativa()),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12), //bordas
                        child: Container(
                          width: 170,
                          height: 200,
                          color: const Color.fromARGB(255, 202, 21, 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(height: 10),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16), //borda img
                                child: Image.asset(
                                  'img/poster.jpg',
                                  width: 130,
                                  height: 155,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 3),
                              const Text(
                                "Nome Peca",
                                softWrap: true,
                                style: TextStyle(
                                  color: Color.fromARGB(226, 250, 188, 89),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Open Sans',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),  // Espaçamento entre os containers


                  //CONTAINER PECA2
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Informativa()), 
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          width: 170,
                          height: 200,
                          color: const Color.fromARGB(255, 202, 21, 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(height: 10),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  'img/poster.jpg',
                                  width: 130,
                                  height: 155,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 3),
                              const Text(
                                "Nome Peca",
                                softWrap: true,
                                style: TextStyle(
                                  color: Color.fromARGB(226, 250, 188, 89),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Open Sans',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
