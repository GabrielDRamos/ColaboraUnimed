import 'package:flutter/material.dart';


class Historico extends StatefulWidget{
  final String title;
  const Historico({super.key, required this.title});

  @override
  State<Historico> createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: const Color.fromARGB(255, 230, 240, 236),
      appBar: AppBar(
         // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor:const Color.fromARGB(255, 230, 240, 236),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("ColaboraUnimed"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Histórico Emocional")
              ],),
              SizedBox(height: 20,),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 160,
                    child: Column(
                      children: [
                       Row(
                          children: [
                            Text("5"),
                            Text("Me sinto ótimo(a)")
                          ],
                       ),
                        Row(
                          children: [
                            Text("4"),
                            Text("Me sinto bem")
                          ],
                       ),
                        Row(
                          children: [
                            Text("3"),
                            Text("Me sinto neutro")
                          ],
                       ),
                        Row(
                          children: [
                            Text("2"),
                            Text("Não me sinto bem")
                          ],
                       ),
                        Row(
                          children: [
                            Text("1"),
                            Text("Me mal")
                          ],
                       )
                      ],
                    ),
                  ),
                  Container(
                    width: 120,
                    child: Column(
                      children: [
                       Wrap(
                          children: [
                            Column(
                              children: [
                                 Text("De acordo com o que foi sinalizado, você está bem!", softWrap: true),
                                 Text("Continue!", softWrap: true,)
                              ],
                            ),
                          ],
                       ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
   );
  }
}