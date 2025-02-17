import 'package:flutter/material.dart';
import 'package:secondapptest/screens/historico.dart';
import 'package:secondapptest/screens/my_home_page.dart';

class Checkin extends StatefulWidget {
  const Checkin({super.key, required this.title});

  final String title;

  @override
  State<Checkin> createState() => _CheckinState();
}

class _CheckinState extends State<Checkin> {
  String? selectedOption;

  List<String> emojis = ["☹", "🙁", "😐", "🙂", "😀"];


  void _showCheckinDialog() {
    showDialog(context: context, 
    barrierDismissible: false,
    builder: (BuildContext ctx) {
      return AlertDialog(
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
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
                fontSize: 20,
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
                        fontSize: 20,
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

  void _handleCheckBoxChange(String value){
    setState(() {
      selectedOption == value;
    });
  }

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
   return Scaffold(
       backgroundColor: Color.fromARGB(255, 230, 240, 236),
       appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 240, 236),
        title: Text("Checkin", style: TextStyle(
          color: const Color.fromARGB(255, 0, 153, 93),
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
       // leading: IconButton(onPressed: () => "fon" , 
       // icon: Image.asset('lib/assets/icons/heart-regular.svg', width: 24, height: 24,)) => resolver erro
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Text("Gostaríamos de cuidar de você, nos ajude!"),
                Text("Como você está agora emocional e fisicamente?"),
              ],
            ),
            SizedBox(height: 50,),
            Column(
              children: [
              Container(
              width: 340,
              color: const Color.fromARGB(51, 95, 248, 187) ,
              child:  Center(
                child: Text("Emocionalmente", style: TextStyle(
                  color: Color.fromARGB(255, 0, 153, 93),
                  fontSize: 16,
                ),),
              ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: emojis.map((emoji) => Text(emoji, style: TextStyle(
                  fontSize: 30
                  ))).toList(),
              ),
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: emojis.map((emoji) {
                return Checkbox(
                  value: selectedOption == emoji,
                  onChanged: (bool? checked) {
                    if (checked == true) {
                      _handleCheckBoxChange(emoji);
                    }
                  },
                );
              }).toList(),
            )
            ]
            ),
            SizedBox(height: 20,),
             Column(
              children: [
              Container(
              
              width: 350,
              color: const Color.fromARGB(51, 95, 248, 187) ,
              child:   Center(
                child: Text("Fisicamente", style: TextStyle(
                  color: Color.fromARGB(255, 0, 153, 93),
                  fontSize: 16,
                ),),
              ),
              ),
             
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: emojis.map((emoji) => Text(emoji, style: TextStyle(fontSize: 30))).toList(),
              ),
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: emojis.map((emoji) {
                return Checkbox(
                  value: selectedOption == emoji,
                  onChanged: (bool? checked) {
                    if (checked == true) {
                      _handleCheckBoxChange(emoji);
                    }
                  },
                );
              }).toList(),
            )
            ]
            ),
           
        SizedBox(height: 100),
        ElevatedButton(style: ElevatedButton.styleFrom(
        shadowColor: Color.fromARGB(255, 0, 0, 0),
        elevation: 5,
        backgroundColor: const Color.fromARGB(255, 0, 153, 93),
        foregroundColor: Colors.white,
        minimumSize:  Size(180, 42),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Borda arredondada
      ),
       ), child: Text('Enviar'), onPressed: () => _showCheckinDialog(),),
          ],
        ),

      ),
   );
  }
}