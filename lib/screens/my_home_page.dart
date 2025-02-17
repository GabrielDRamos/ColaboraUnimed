import 'package:flutter/material.dart';
import 'package:secondapptest/widgets/home_button.dart';
import 'checkin.dart';
class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  String? nome;
  
  final List<String> emojis = ["☹", "🙁", "😐", "🙂", "😀"];

  Widget _buildNavItem(IconData icon) {
          return Container(
            width: 50, // Aumenta a área do toque
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(icon, size: 50, color: Color.fromARGB(255, 0, 61, 37)),
          );
    }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 240, 236),
      appBar: AppBar(
       
        backgroundColor:const Color.fromARGB(255, 230, 240, 236),
       
        title: Text(widget.title),
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
                  _buildNavItem(Icons.question_mark),
                  _buildNavItem(Icons.play_arrow),
                  _buildNavItem(Icons.person),
                ],
              ),
            ),
          ),
        ),    
      body: Container(
       padding: EdgeInsets.all(14),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
             height: 120,
             width: 350,
             decoration: BoxDecoration(
              color: const Color.fromARGB(53, 0, 153, 92),
              borderRadius: BorderRadius.circular(15),
             ),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Como você está se sentindo hoje?", style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: emojis.map((emoji) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Checkin(title: "laksjdsalk")),);
                          },
                          child: Text(
                            emoji,
                            style: TextStyle(fontSize: 40),
                          ),
                        );
                      }).toList()
                    ),
                  ),
                  Text("Faça seu check-in",  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),)
                ],
             )
            ),
          ],
        ),
        SizedBox(height: 40),
       
       HomeButton(nome: "Comprometimento"),
       SizedBox(height: 10),
       HomeButton(nome: "Escolha Premiada"),
       SizedBox(height: 10),
       HomeButton(nome: "Ranking"),
       SizedBox(height: 10),
       HomeButton(nome: "Desafio Mensal"),
       SizedBox(height: 10),
       HomeButton(nome: "Reconhecimento"),
       SizedBox(height: 10),
       HomeButton(nome: "Inovação & Você"),
       ] 
       ) 
    ),
  
  );
  }
}


