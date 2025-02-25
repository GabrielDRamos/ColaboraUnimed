import 'package:flutter/material.dart';
import 'package:secondapptest/widgets/app_bar_item.dart';
import 'package:secondapptest/widgets/bottom_nav_item.dart';

class ExamesPeriodicos extends StatelessWidget {
 final List<Map<String, String>> exames = [
   {
     "titulo": "Exame de sangue",
     "data": "20/02/2024",
     "descricao": "glicemia total"
   },

   {
     "titulo": "Exame de coluna",
     "data": "25/07/2024",
     "descricao": "Ressonância na lombar"
   },

   {
     "titulo": "Exame de sangue",
     "data": "20/02/2025",
     "descricao": "Triglicerídeos"
   },

   {
     "titulo": "Exame de sangue",
     "data": "20/02/2025",
     "descricao": "Triglicerídeos"
   },

   {
     "titulo": "Exame de sangue",
     "data": "20/02/2025",
     "descricao": "Triglicerídeos"
   },

   {
     "titulo": "Exame de sangue",
     "data": "20/02/2025",
     "descricao": "Triglicerídeos"
   },
   {
     "titulo": "Exame de sangue",
     "data": "20/02/2025",
     "descricao": "Triglicerídeos"
   },
   {
     "titulo": "Exame de sangue",
     "data": "20/02/2025",
     "descricao": "Triglicerídeos"
   },

 ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBarItem(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Exames Periódicos", style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 5,),
            RichText(text: TextSpan(
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: 'Colaborador: ',
                    style: TextStyle(color: Colors.black87)
                ),
                TextSpan(
                    text: "Gabriel Duarte Ramos",
                    style: TextStyle(color: Colors.black45))
              ]
            )),

            SizedBox(height: 15,),
            Expanded(
              child: ListView.builder(
                  itemCount: exames.length,
                  itemBuilder: (context, index){
                    final exame = exames[index];
                    return Card(
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(vertical: 8),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        exame["titulo"]!,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                        ),
                                    ),
                                    SizedBox(height: 5,),
                                    Text(
                                      exame["data"]!,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                    Text(
                                      exame["descricao"]!,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                    Divider(height: 20, thickness: 1),
                                  ],
                                )
                            ),
                            IconButton(onPressed: (){
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Visualizando ${exame["titulo"]}')),
                              );
                            }, icon: Icon(Icons.visibility))
                          ],
                        ),
                      ),
                    );
                  }
              ),
            )
       ]),
      ),
      bottomNavigationBar: BottomNavItem(),
    );
  }
}
