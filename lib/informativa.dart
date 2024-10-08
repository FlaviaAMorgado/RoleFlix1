import 'package:flutter/material.dart';
import 'package:roleflix/lista.dart';
import 'package:url_launcher/url_launcher.dart';

class Informativa extends StatelessWidget {
  const Informativa({super.key});

_launchURL(Uri url) async {
    if(!await launchUrl(url)) {
      throw Exception('Não foi possivel acessar o site');
    }
  }

  @override
  Widget build(BuildContext context) {
    final peca = ModalRoute.of(context)!.settings.arguments as Peca;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "AppRoleFlix",
        home: Scaffold(
            // ignore: prefer_const_constructors
            body: SingleChildScrollView( //Configuração da ScrollView
              child: //SingleChild's só aceitam uma child, normalmente sendo um tipo de layout, no caso sendo uma column
              Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[ //as column's nesta situação podem aceitar mais de uma criança
              DecoratedBox(
        // BoxDecoration takes the image
        decoration: const BoxDecoration(
          // Image set to background of the body
          image: DecorationImage(
              image: AssetImage("img/backInformativa.png"), fit: BoxFit.cover),
        ),
        
        
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget> [ 
                            
                const SizedBox(height: 50,),
               ClipRRect(
                borderRadius: BorderRadius.circular(30),
              
               child: Container(
                 width: 450,
                 height: 900,
                 margin: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 202, 21, 8),
                 ),
                child: Column (
                 mainAxisAlignment: MainAxisAlignment.center, // para alinhar 
                 children: <Widget>[
                  Text(
                    peca.Nome,
                   style: const TextStyle(
                     color:  Color.fromARGB(226, 250, 188, 89),
                     fontWeight: FontWeight.bold,
                     fontSize: 30, 
                     fontFamily: 'Forum', 
                   ),
                   textAlign: TextAlign.center,
                 ),

                const SizedBox(height: 10,), //espaço
                 ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                 child: Image.asset(
                  peca.PacaImg,
                  width: 300,
                   height: 300, 
                   fit: BoxFit.cover,),
                   ),
                 const SizedBox(height: 10,),        
                Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Text(
                    peca.DescDet,
                   style: const TextStyle(
                     color: Colors.white,
                     fontSize: 15, 
                     fontFamily: 'Open Sans',
                   ),
                  textAlign: TextAlign.justify, //justificar e alinhar ao centro
                 ),
                ),
               
                 const SizedBox(height:20 ),
                 const Text(
                   "Temporada:",
                   softWrap: true,
                   style: TextStyle(
                     color: Color.fromARGB(226, 250, 188, 89),
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                     fontFamily: 'Open Sans',
                   ),
               
                 ),
                 const SizedBox(height: 3,),
                  Text(
                   peca.Temporada,
                   style: const TextStyle(
                     color: Colors.white,
                     fontSize: 20, 
                     fontFamily: 'Open Sans',
                   )
                 ),
               
                  const SizedBox(height: 5,),
                 const Text(
                   "Local e Datas :",
                   softWrap: true,
                   style: TextStyle(
                     color: Color.fromARGB(226, 250, 188, 89),
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                     fontFamily: 'Open Sans',
                   ),
               
                 ),
                 const SizedBox(height: 3,),
                 Text(
                   peca.Local,
                   style: const TextStyle(
                     color: Colors.white,
                     fontSize: 20, 
                     fontFamily: 'Open Sans',
                   ),
                 ),

                 const SizedBox(height: 3,),
                 Text(
                   peca.Data,
                   style: const TextStyle(
                     color: Colors.white,
                     fontSize: 20, 
                     fontFamily: 'Open Sans',
                   ),
                 ),

                  const SizedBox(height: 25,),
              ElevatedButton(
                   onPressed: () {
                     _launchURL(peca.Link);
                   },
                    style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 109, 10, 3), // Define a cor de fundo para vermelho
                    ),
                   child: const Text('Ver ingressos',
                    style: TextStyle(
                      color:  Colors.white,
                    ),
                   ),
              ),

               ],
                 ),
               
               
               ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                   onPressed: () {
                     Navigator.pop(context);
                   },
                    style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 202, 21, 8), // Define a cor de fundo para vermelho
                    ),
                   child: const Text('Voltar',
                    style: TextStyle(
                      color:  Colors.white,
                    ),
                   ),
              ),
                ],
                 ),
              ),
            )
            ],),)
        ),
    );
    


  }
}