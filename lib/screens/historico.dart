import 'package:flutter/material.dart';


class Historico extends StatefulWidget{
  final String title;
  const Historico({super.key, required this.title});

  @override
  State<Historico> createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {

   Widget _buildNavItem(IconData icon) {
          return Container(
            width: 50, // Aumenta a área do toque
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(icon, size: 40, color: Color.fromARGB(255, 0, 61, 37)),
          );
    }
  
  @override
  Widget build(BuildContext context) {

   TableRow _tableRow = TableRow(
    children: <Widget> [
      Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 153, 93)
        ),
        child: Padding(padding: EdgeInsets.all(2.0), child: Text("Data",textAlign: TextAlign.center ,style: TextStyle(
          color: Colors.white
        ),),),
        ),

         Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 153, 93)
        ),
        child: Padding(padding: EdgeInsets.all(2.0), child: Text("Entrada", textAlign: TextAlign.center,style: TextStyle(
          color: Colors.white
        ),),),
        ),

         Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 153, 93)
        ),
        child: Padding(padding: EdgeInsets.all(2.0), child: Text("Saída",textAlign: TextAlign.center ,style: TextStyle(
          color: Colors.white
        ),),),
        ),

    ]
   );

   TableRow _tableRowData = TableRow(
    children: <Widget> [
        Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 61, 37)
        ),
        child: Padding(padding: EdgeInsets.all(2.0), child: Text("00/00/0000",textAlign: TextAlign.center ,style: TextStyle(
          color: Colors.white
        ),),),
        ),

         Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 153, 93)
        ),
        child: Padding(padding: EdgeInsets.all(2.0), child: Text("5",textAlign: TextAlign.center ,style: TextStyle(
          color: Colors.white
        ),),),
        ),

         Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(101, 0, 153, 92)
        ),
        child: Padding(padding: EdgeInsets.all(2.0), child: Text("4",textAlign: TextAlign.center ,style: TextStyle(
          color: Colors.white
        ),),),
        ),
    ]
   );


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
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
          child: SizedBox(
            height: 75,
            child: BottomAppBar(
              color: Color.fromARGB(255, 0, 61, 37),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Centraliza os itens
                children: [
                  _buildNavItem(Icons.home),
                  _buildNavItem(Icons.search),
                  _buildNavItem(Icons.play_arrow),
                  _buildNavItem(Icons.person),
                ],
              ),
            ),
          ),
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
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),)
              ],),
              SizedBox(height: 20,),
              Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                     color: const Color.fromARGB(53, 0, 153, 92),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       Row( mainAxisAlignment: MainAxisAlignment.center,  children: [Text("Legenda", style: TextStyle(
                        fontWeight: FontWeight.bold
                       ),)]),
                       Padding(
                         padding: const EdgeInsets.only(left: 8),
                         child: Row(
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
                       ),
                       SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left:8),
                          child: Row(
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
                        ),
                       SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
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
                        ),
                       SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
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
                        ),
                       SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
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
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 0, 153, 93)
                    ),
                    width: 120,
                    height: 160,
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       Padding(
                          padding: EdgeInsets.all(5),
                          child: 
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
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("Últimos 10 dias", textAlign: TextAlign.center, style: TextStyle(color: const Color.fromARGB(130, 0, 0, 0), fontSize: 18),)],), 
              SizedBox(height: 15,),
              Center(
                child: Table(
                  border: TableBorder.all(
                    color: Colors.white,
                    width: 2
                  ),
                  children: <TableRow> [
                    _tableRow,
                    _tableRowData,
                    _tableRowData,
                    _tableRowData,
                  ],
                ),
              )
              ]
            ),
          )
        ],
      ),
   );
  }
}
