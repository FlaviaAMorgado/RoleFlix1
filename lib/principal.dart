import 'package:flutter/material.dart';
import 'package:roleflix/informativa.dart';
import 'package:roleflix/lista.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PrincipalState createState() => _PrincipalState();
}

const descDet1 = 'A peça, inspirada no livro do estadunidense John Steinbeck, narra a amizade entre dois trabalhadores rurais da Califórnia durante a Grande Depressão Americana. George, é esperto e ágil, e Lennie, forte e ingênuo, unem-se pelo sonho de comprar um pedaço de terra onde possam viver. A trama explora a profunda amizade entre os dois, os desafios decorrentes de suas circunstâncias e do preconceito da época. Temas centrais incluem a busca pelo sonho americano, a solidão, a vulnerabilidade dos trabalhadores itinerantes e a complexidade das relações humanas.';
const descDet2 = '"Cantando na Chuva" é a versão teatral do famoso filme musical de 1952, conhecido por seus icônicos números de dança e sapateado. Ambientado na transição dos filmes mudos para o cinema falado, o espetáculo segue a história de Don Lockwood, uma estrela do cinema mudo, e sua parceira Lina Lamont, cuja voz não é adequada para os filmes falados. Com a ajuda de seus amigos, Don precisa superar os desafios dessa nova era do cinema. A produção é repleta de coreografias elaboradas, canções memoráveis e cenários deslumbrantes, proporcionando uma experiência nostálgica e encantadora';

class _PrincipalState extends State<Principal> {
  List<Peca> pecas = <Peca>[
    Peca(1, "Sobre Ratos e Homens", descDet1, "Até 30 de Junho", "Teatro FAAP", "Quartas e Quintas as 20h", "img/rato.jpeg", Uri.parse('https://www.google.com.br/')),
    Peca(2, "Singing in the Rain", descDet2, "Indisponivel", "Bela Vista", "Quarta a sexta as 20h", "img/singinPoster.jpg", Uri.parse('https://www.google.com.br/'))
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
            // ignore: sized_box_for_whitespace
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
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                pecas[index].Nome,
                                style: const TextStyle( //estilo
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


