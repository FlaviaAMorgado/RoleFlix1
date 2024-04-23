import 'package:flutter/material.dart';

class Informativa extends StatelessWidget {
  const Informativa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "AppRoleFlix",
        home: Scaffold(
            // ignore: prefer_const_constructors
            body: 
            Center(
              child: Container(
                width: 700,
                height: 100,
                color: const Color.fromARGB(255, 202, 21, 8),
               child: Column (
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Image.asset('img/poster.png'),
                Text(
                  'da certo por favor',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
                ),
              )
            )
        )
        );
    


  }
}
