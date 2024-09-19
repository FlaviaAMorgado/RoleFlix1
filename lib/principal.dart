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
const descDet3 = 'Dez anos depois da estreia do sucesso Rita Lee Mora ao Lado, a atriz Mel Lisboa volta a interpretar a roqueira-mor em um musical inédito, desta vez inspirado na autobiografia da cantora. Com direção de Márcio Macena e Débora Dubois, Rita Lee – Uma Autobiografia Musical.';
const descDet4 = "Um ritual! Reencontro com o sagrado na obra de uma das maiores cantoras do Brasil. Abram alas para Clara Nunes, A Tal Guerreira, uma viagem onírica pela trajetória da intérprete que escreveu seu nome na história da música popular brasileira através do samba e de sua busca na religiosidade de um povo ecumênico, miscigenado e plural, universalidade das raças dentro de um corpo-partitura, que cultua os santos, reza um canto e canta um ponto.";
const descDet5 = "Em “Atotô – Silêncio, O Rei Está na Terra”, Exu, o mensageiro entre os dois mundos com seu gingado, convida o público a silenciar os pensamentos, em uma alusão ao significado da expressão ‘Atotô’, que significa silêncio.";
const descDet6 = "Seis atores representam idosos acima de 85 anos, que passam o dia num retiro para artistas sempre sob a supervisão de uma enfermeira. Na ausência dela, estes simpáticos senhores se transformam, revelando suas verdadeiras personalidades e mostrando, através do bom e velho rock and roll, que o sonho ainda não acabou e que eles são eternamente jovens!";
const descDet7 = "Nessa comédia acompanhamos o dilema desta mulher, interpretada por Adriana Birolli, que faz terapia há dezoito anos para aprender a dizer não e ainda não conseguiu. Ela não quer ir ao jantar de comemoração do seu aniversário e enquanto ela se arruma para sair, a personagem recebe mensagens de sua mãe, irmã, namorado e chefe e mostra como a dificuldade de dizer não pode nos atingir em todos os campos da nossa vida, seja pessoal, profissional ou familiar.";
const descDet8 = "Através da história de Marilyn Monroe, estrela mundial do cinema e mulher-ícone do século XX, a peça convida a uma reflexão sobre solidão e depressão, temas atuais e urgentes no mundo contemporâneo, especialmente com o advento da pandemia. “Marilyn, por trás do espelho” investiga uma Marilyn menos conhecida, para além do glamour que a eternizou.";
const descDet9 = "No final do período de reclusão social decorrente da pandemia do Covid, um diretor e um produtor teatral se unem para repensar um espetáculo que estrearia em março de 2020 mas acabou cancelado. Eles decidem continuar com o trabalho já feito, porém o adaptando ao “novo normal” vivido à época. Assim, o mundo de Edgar Allan Poe, mostrado nos contos A Máscara da Morte Rubra, Gato Preto e O Corvo, dentre outros, será trazido ao palco numa montagem que privilegia o fantástico. ";

class _PrincipalState extends State<Principal> {
  List<Peca> pecas = <Peca>[
    Peca(1, "Sobre Ratos e Homens", descDet1, "Até 30 de Junho", "Teatro FAAP", "Quartas e Quintas as 20h00", "img/rato.jpeg", Uri.parse('https://www.google.com.br/')),
    Peca(2, "Singing in the Rain", descDet2, "Indisponivel", "Bela Vista", "Quarta a sexta as 20h00", "img/singinPoster.jpg", Uri.parse('https://www.google.com.br/')),
    Peca(3, "RITA LEE - UMA AUTOBIOGRAFIA MUSICAL", descDet3, "Até 08 de Dezembro", "Teatro Porto", "Sexta e Sabado ás 20h00","img/rita.jpg", Uri.parse('https://bileto.sympla.com.br/event/92327/d/257877?_gl=1*fioymn*_gcl_au*MTkzOTQ1NDY1MC4xNzI2MTQ3MDU5*_ga*MTY5MDA1Mzc5Ny4xNzI2MTQ3MDU5*_ga_KXH10SQTZF*MTcyNjE0NzA1OS4xLjEuMTcyNjE0NzA5Ni4yMy4wLjE1MjIxNzEyODA.')),
    Peca(4, "CLARA NUNES - A TAL GUERREIRA", descDet4, "Até 29 de Setembro", "Teatro Bravos", "Sexta e Sábado às 21h00", "img/Clara.png", Uri.parse('https://bileto.sympla.com.br/event/93986/d/259682?_gl=1*vd0yyz*_gcl_au*MTc0ODUyMTQ1MS4xNzI2NzAxODY4*_ga*MTM0MjMwODM3My4xNzI2NzAxODY5*_ga_KXH10SQTZF*MTcyNjcwMTg2OC4xLjEuMTcyNjcwMTg5MS4zNy4wLjgzODQzODAzMw..')),
    Peca(5, "ATOTÔ – SILÊNCIO, O REI ESTÁ NA TERRA", descDet5, "Até 28 de Outubro", "Teatro Oficina", "Segunda às 20h30", "img/atoto.png", Uri.parse("https://bileto.sympla.com.br/event/96393/d/275398/s/1886094?_gl=1*1nleokg*_gcl_au*MTc0ODUyMTQ1MS4xNzI2NzAxODY4*_ga*MTM0MjMwODM3My4xNzI2NzAxODY5*_ga_KXH10SQTZF*MTcyNjcwMTg2OC4xLjEuMTcyNjcwMjU1Ni40MC4wLjgzODQzODAzMw..")),
    Peca(6, "Forever Young", descDet6, "Até 10 de Novembro", "Teatro Fernando Torres", "Quarta a Domingo das 14h às 19h", "img/young.png", Uri.parse("https://www.sampaingressos.com.br/forever+young+teatro+fernando+torres")),
    Peca(7, "Não - A Comédia para Quem tem Dificuldade em Dizer Não", descDet7, "Até 29 de Setembro", "Teatro UOL", "Sábados, às 18h e às 20h; domingos, às 18h.", "img/nao.png", Uri.parse("https://www.sampaingressos.com.br/nao+a+comedia+para+quem+tem+dificuldade+em+dizer+nao+teatro+uol")),
    Peca(8, "Marilyn - Por Trás do Espelho", descDet8, "Até 27 de Setembro", "Teatro Ruth Escobar", "Sextas, às 20h.", "img/morrow.png", Uri.parse("https://www.sampaingressos.com.br/marilyn+por+tras+do+espelho+teatro+ruth+escobar+sala+dina+sfat")),
    Peca(9, "Uma Noite Muito Escura Com o Sr Edgar Allan Poe", descDet9, "Até 21 de Setembro", "Teatro UNICID", "Sexta e Sábado, às 21h", "img/noite.png", Uri.parse("https://www.sampaingressos.com.br/uma+noite+muito+escura+com+o+sr+edgar+allan+poe+teatro+unicid"))
    

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


