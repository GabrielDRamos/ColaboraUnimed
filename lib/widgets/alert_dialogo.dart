import 'package:flutter/material.dart';
import 'package:secondapptest/screens/historico.dart';
import 'package:secondapptest/screens/my_home_page.dart';

class AlertDialogo{

 static void showCheckinDialog(BuildContext context) {
    showDialog(
    context: context, 
    barrierDismissible: false,
    builder: (_) {
      return AlertDialog(
        backgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.zero,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 214, 210, 210),
                borderRadius: BorderRadius.only(topRight: Radius.circular(8), topLeft: Radius.circular(8)),
                 
              ),
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              child: const Text(
              'Você enviou o seu checkin', 
              textAlign: TextAlign.center, 
              style: TextStyle(
                color: Color.fromARGB(255, 0, 153, 93) ,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
            ),
            Container(
              decoration: BoxDecoration(
                 color: Color.fromARGB(255, 255, 255, 255),
                 borderRadius: BorderRadius.only(bottomRight: Radius.circular(8), bottomLeft: Radius.circular(8)),

              ),
             
              child: Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(8), bottomLeft: Radius.circular(8)),
                  color: Color.fromARGB(186, 3, 120, 73),
                  ),
                   width: double.infinity,
                  height: 64,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: const Text(
                      'Parabéns pelo autocuidado!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(200, 239, 237, 237),
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                                  ),
                  ),
                      ),
            ),
        SizedBox(height: 15,),
        SizedBox(
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(10),
                backgroundColor: Color.fromARGB(255, 0, 153, 93), // fundo verde // texto branco
                minimumSize: const Size(200, 32),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // Borda arredondada opcional
                side: const BorderSide(color: Colors.white, width: 1.0), // Borda branca
                ) // fund
                ),
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'ColaboraUnimed')));
                },
                child: Text("Voltar a Home", style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),),
              ),
              SizedBox(height: 14,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(10),
                backgroundColor: Color.fromARGB(255, 0, 153, 93),
                minimumSize: const Size(200, 32),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // Borda arredondada opcional
                side: const BorderSide(color: Colors.white, width: 1.0), // Borda branca
                ) // fundo verde // texto branco
                ),
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Historico(title: 'ColaboraUnimed')));
                },
                child: Text("Ver histórico", style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),),
              ),
               SizedBox(height: 8,),
            ],
          ),
        )
        ],
        ),
      );
    }
    );
  }
}