import 'package:flutter/material.dart';
import 'package:roleflix/informativa.dart';
import 'package:roleflix/lista.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  PrincipalState createState() => PrincipalState();
}

//LISTA DE PAÇAS
class PrincipalState extends State<Principal> {
  List<Peca> pecas = <Peca>[
    Peca(1, "Sobre Ratos e Homens", "Lorem Ipsun", "Até 30 de Junho", "Teatro FAAP", "Quartas e Quintas as 20h", "img/poster.jpg"),
    Peca(2, "Singing in the Rain", "Lorem Ipsun", "Indisponivel", "Bela Vista", "Quarta a sexta as 20h", "img/poster.jpg")
  ];

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
          child: Column(
            children: [
              const SizedBox(height: 190),
              Center(
                child: Column(
                  children: pecas.map((peca) { //map p poder localizar e usar a lista
                    return Column(
                      children: [
                        GestureDetector( //transforma o container em um btn
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Informativa()),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12), //borda do container
                            child: Container(
                              width: 170,
                              height: 230,
                              color: const Color.fromARGB(255, 202, 21, 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start, //define alinhamento
                                children: <Widget>[
                                  const SizedBox(height: 10),

                                  //IMAGEM
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16), //borda da imagem
                                    child: Image.asset(
                                      peca.PacaImg,
                                      width: 130,
                                      height: 155,
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  //TEXT
                                  const SizedBox(height: 3),
                                  Text(
                                    peca.Nome,
                                    softWrap: true,
                                    style: const TextStyle(
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
                        const SizedBox(height: 25), //add espaço vert. entre os containers
                      ],
                    );
                  }).toList(), // converte em lista
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
