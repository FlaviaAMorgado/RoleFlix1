import 'package:flutter/material.dart';
import 'package:roleflix/informativa.dart';
import 'package:roleflix/lista.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  List<Peca> pecas = <Peca>[
    const Peca(1, "Sobre Ratos e Homens", "Lorem Ipsun", "Até 30 de Junho", "Teatro FAAP", "Quartas e Quintas as 20h", "img/ratoehomensposter"),
    const Peca(2, "Singing in the Rain", "Lorem Ipsun", "Indisponivel", "Bela Vista", "Quarta a sexta as 20h", "img/singinposter.jpg")
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
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: ListView.builder( //cria a visualização da lista
                itemCount: pecas.length,
                shrinkWrap: true,
                padding: const EdgeInsets.all(9),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  
                  return Card(//Configura as cedulas da lista
                    color:  const Color.fromARGB(255, 202, 21, 8),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(3), //define o espeçamento entre o conteudo e a borda do list
                        child: Row(
                          children: [
                            ClipRRect(
                            borderRadius: BorderRadius.circular(10), // arredonda os catos
                            child: Image.asset(
                              pecas[index].PacaImg, // Caminho para a imagem
                              width: 80, // Largura da imagem
                              height: 80, // Altura da imagem
                              fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                pecas[index].Nome,
                                style: TextStyle( //estilo
                                  color: Color.fromARGB(226, 250, 188, 89),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold, 
                                  fontFamily: 'Open Sans',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //INTENT
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Informativa(),
                          settings: RouteSettings(arguments: pecas[index]),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}


