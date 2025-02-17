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
                Text("Histórico Emocional", style: TextStyle(
                  color: const Color.fromARGB(255, 0, 153, 93),
                  fontWeight: FontWeight.bold
                ),)
              ],),
              SizedBox(height: 20,),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 160,
                    height: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                     color: const Color.fromARGB(53, 0, 153, 92),
                    ),
                    child: Column(
                      children: [
                       Row(mainAxisAlignment: MainAxisAlignment.center,  children: [Text("Legenda", style: TextStyle(
                        fontWeight: FontWeight.bold
                       ),)]),
                       Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 20,
                              width: 18,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4), 
                              color: Color.fromARGB(255,0, 153, 89),
                              ),
                              child: Text("5 " ,textAlign: TextAlign.center, style: TextStyle(
                                color: Colors.white
                              ),),
                            ),
                            SizedBox(width: 5,),
                            Text("Me sinto ótimo(a)", style: TextStyle(color: const Color.fromARGB(135, 0, 0, 0)), )
                          ],
                       ),
                       SizedBox(height: 5,),
                        Row(
                          children: [
                             Container(
                              alignment: Alignment.center,
                              height: 20,
                              width: 18,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4), 
                              color: Color.fromARGB(103, 0, 153, 89),
                              ),
                               child: Text("4 " , textAlign: TextAlign.center, style: TextStyle(
                                color: Colors.white
                                                           ),),
                             ),
                             SizedBox(width: 5,),
                            Text("Me sinto bem", style: TextStyle(color: const Color.fromARGB(135, 0, 0, 0)), )
                          ],
                       ),
                       SizedBox(height: 5,),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 20,
                              width: 18,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4), 
                              color: Color.fromARGB(255,128, 128, 128),
                              ),
                              child: Text("3 " , textAlign: TextAlign.center, style: TextStyle( 
                                color: Colors.white
                              ),),
                            ),
                            SizedBox(width: 5,),
                            Text("Me sinto neutro", style: TextStyle(color: const Color.fromARGB(135, 0, 0, 0)), )
                          ],
                       ),
                       SizedBox(height: 5,),
                        Row(
                          children: [
                             Container(
                              alignment: Alignment.center,
                              height: 20,
                              width: 18,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4), 
                              color: Color.fromARGB(102, 0, 0, 255),
                              ),
                               child: Text("2" , textAlign: TextAlign.center, style: TextStyle(
                                color: Colors.white
                                                           ),),
                             ),
                            SizedBox(width: 5,),
                            Text("Não me sinto bem", style: TextStyle(color: const Color.fromARGB(135, 0, 0, 0)), )
                          ],
                       ),
                       SizedBox(height: 5,),
                        Row(
                          children: [
                             Container(
                              alignment: Alignment.center,
                              height: 20,
                              width: 18,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4), 
                              color: Color.fromARGB(255, 0, 0, 255),
                              ),
                               child: Text("1" , textAlign: TextAlign.center,style: TextStyle(
                                color: Colors.white,),),
                             ),
                             SizedBox(width: 5,),
                            Text("Me sinto mal", style: TextStyle(color: const Color.fromARGB(135, 0, 0, 0)), )
                          ],
                       ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 0, 153, 93)
                    ),
                    width: 120,
                    height: 145,
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       Wrap(
                          children: [
                            Column(
                              children: [
                                 Text("De acordo com o que foi sinalizado, você está bem!",textAlign: TextAlign.center, softWrap: true, style: TextStyle(
                                  color: Colors.white
                                 ),),
                                 Text("Continue!", softWrap: true,textAlign: TextAlign.center, style: TextStyle(
                                  color: Colors.white
                                 ),)
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
          ), // antes da tabela
          SizedBox(
            width: 300,
            child: Column(
              children: [
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("Últimos 10 dias", textAlign: TextAlign.center, style: TextStyle(color: const Color.fromARGB(100, 0, 0, 0)),)],), 
              Table(
                children: [],
              )],
            ),
          )
        ],
      ),
   );
  }
}
