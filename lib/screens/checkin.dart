import 'package:flutter/material.dart';
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
    builder: (BuildContext ctx) {
      return AlertDialog(
        contentPadding: EdgeInsets.zero,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              color: const Color.fromARGB(255, 214, 210, 210),
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
                width: double.infinity,
                color: Color.fromARGB(160, 0, 153, 92),
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Parabéns pelo autocuidado!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
            ),
        ),
        SizedBox(height: 15,),
        Container(
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 153, 93), // fundo verde // texto branco
                ),
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'ColaboraUnimed')));
                },
                child: Text("Voltar a Home", style: TextStyle(
                  color: Colors.white
                ),),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 153, 93), // fundo verde // texto branco
                ),
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'ColaboraUnimed')));
                },
                child: Text("Ver histórico", style: TextStyle(
                  color: Colors.white
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
      ),

      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(0),
        topRight: Radius.circular(0),
        bottomLeft: Radius.circular(0),
        bottomRight:  Radius.circular(0)
        
       ),
       child: SizedBox(
        height: 60,
         child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 0, 61, 37),
          selectedItemColor: Color.fromARGB(255, 0, 61, 37),
          unselectedItemColor: Color.fromARGB(255, 0, 61, 37),
          items:  [
          BottomNavigationBarItem(
            icon: Center(
              child: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: const Icon(Icons.home,size: 40, color: Color.fromARGB(255, 0, 61, 37),),
              ),
            ), 
            label: '',
            ),
              BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: const Icon(Icons.search,size: 40, color: Color.fromARGB(255, 0, 61, 37),),
            ), 
            label: '',
            ),
              BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: const Icon(Icons.play_arrow, size: 40, color: Color.fromARGB(255, 0, 61, 37),),
            ), 
            label: '',
            ),
              BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: const Icon(Icons.person, size: 40, color: Color.fromARGB(255, 0, 61, 37),),
            ), 
            label: '',
            ),
          ]),
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
                  color: Color.fromARGB(255, 0, 153, 93)
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
            SizedBox(height: 20,),
             Column(
              children: [
              Container(
              
              width: 350,
              color: const Color.fromARGB(51, 95, 248, 187) ,
              child:   Center(
                child: Text("Fisicamente", style: TextStyle(
                  color: Color.fromARGB(255, 0, 153, 93)
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