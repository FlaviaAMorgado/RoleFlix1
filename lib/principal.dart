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
    const Peca(1, "Sobre Ratos e Homens", "Lorem Ipsun", "Até 30 de Junho", "Teatro FAAP", "Quartas e Quintas as 20h", "img/poster.jpg"),
    const Peca(2, "Singing in the Rain", "Lorem Ipsun", "Indisponivel", "Bela Vista", "Quarta a sexta as 20h", "img/poster.jpg")
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
              ListView.builder( //cria a visualização da lista
                itemCount: pecas.length,
                shrinkWrap: true,
                padding: const EdgeInsets.all(5),
                scrollDirection: Axis.vertical,
                // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                itemBuilder: (BuildContext, index){
                  return Card( //Configura as cedulas da lista
                    child: ListTile(
                      title: Text(pecas[index].Nome), //titulo da cedula
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Informativa(), //a ação ao ser clicada
                      settings: RouteSettings(arguments: pecas[index])))//Parametros que ela vai enviar para a proxima teka
                      ,
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
