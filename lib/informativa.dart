import 'package:flutter/material.dart';
import 'package:roleflix/lista.dart';

class Informativa extends StatelessWidget {
  const Informativa({super.key});

  @override
  Widget build(BuildContext context) {
    final peca = ModalRoute.of(context)!.settings.arguments as Peca;
    return MaterialApp(
        title: "AppRoleFlix",
        home: Scaffold(
            // ignore: prefer_const_constructors
            body: DecoratedBox(
        // BoxDecoration takes the image
        decoration: const BoxDecoration(
          // Image set to background of the body
          image: DecorationImage(
              image: AssetImage("img/backInformativa.png"), fit: BoxFit.cover),
        ),
        
        
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget> [ Text(peca.Nome,
                   style: const TextStyle(
                     color:  Color.fromARGB(226, 250, 188, 89),
                     fontWeight: FontWeight.bold,
                     fontSize: 40, 
                     fontFamily: 'Forum',
                   )
                 ),
                const SizedBox(height: 8,),
               ClipRRect(borderRadius: BorderRadius.circular(30),
              
               child: Container(
                 width: 450,
                 height: 600,
                 color: const Color.fromARGB(255, 202, 21, 8),
                child: Column (
                 mainAxisAlignment: MainAxisAlignment.start, // para alinhar 
                 children: <Widget>[
                   const SizedBox(height: 20,), //espaço
                 Image.asset('img/poster.jpg', width: 400, height: 250, fit: BoxFit.cover,),
                 const SizedBox(height: 10,),
                 
                 const SizedBox(height: 3,),
                  Text(peca.DescDet,
                   style: const TextStyle(
                     color: Colors.white,
                     fontSize: 16, 
                     fontFamily: 'Open Sans',
                   )
                 ),
               
                 const SizedBox(height: 5,),
                 const Text(
                   "Temporada:",
                   softWrap: true,
                   style: TextStyle(
                     color: Color.fromARGB(226, 250, 188, 89),
                     fontSize: 16,
                     fontWeight: FontWeight.bold,
                     fontFamily: 'Open Sans',
                   ),
               
                 ),
                 const SizedBox(height: 3,),
                  Text(
                   peca.Temporada,
                   style: const TextStyle(
                     color: Colors.white,
                     fontSize: 16, 
                     fontFamily: 'Open Sans',
                   )
                 ),
               
                  const SizedBox(height: 5,),
                 const Text(
                   "Local e Datas :",
                   softWrap: true,
                   style: TextStyle(
                     color: Color.fromARGB(226, 250, 188, 89),
                     fontSize: 16,
                     fontWeight: FontWeight.bold,
                     fontFamily: 'Open Sans',
                   ),
               
                 ),
                 const SizedBox(height: 3,),
                 Text(
                   peca.Local,
                   style: const TextStyle(
                     color: Colors.white,
                     fontSize: 16, 
                     fontFamily: 'Open Sans',
                   ),
                 ),

                 const SizedBox(height: 3,),
                 Text(
                   peca.Data,
                   style: const TextStyle(
                     color: Colors.white,
                     fontSize: 16, 
                     fontFamily: 'Open Sans',
                   ),
                 ),
               ],
                 ),
               
               
               ),
              ),
              const SizedBox(height: 50,),
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
        ),
    );
    


  }
}