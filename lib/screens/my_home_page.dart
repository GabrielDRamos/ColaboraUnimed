import 'package:flutter/material.dart';
import 'checkin.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  final List<String> emojis = ["☹", "🙁", "😐", "🙂", "😀"];

  

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 240, 236),
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor:const Color.fromARGB(255, 230, 240, 236),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
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
      body: Container(
       padding: EdgeInsets.all(14),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
        Container(
         decoration: BoxDecoration(
          color: const Color.fromARGB(10, 0, 153, 92),
          borderRadius: BorderRadius.circular(15),
         ),
         child: Column(
            children: [
              Text("Como você está se sentindo hoje?", style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
              ),)
            ],
         )
        ),
        SizedBox(height: 40),
        ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 0, 153, 93),
        foregroundColor: Colors.white,
        minimumSize: Size(232, 48),
       ), child: Text('Comprometimento'), onPressed: () => 'salve',),
       SizedBox(height: 10),
        ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 0, 153, 93),
        foregroundColor: Colors.white,
        minimumSize:  Size(232, 48),
       ), child: Text('Escolha Premiada'), onPressed: () => 'salve',),
       SizedBox(height: 10),
        ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 0, 153, 93),
        foregroundColor: Colors.white,
        minimumSize:  Size(232, 48),
       ), child: Text('Ranking'), onPressed: () => 'salve',),
       SizedBox(height: 10),
        ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 0, 153, 93),
        foregroundColor: Colors.white,
        minimumSize:  Size(232, 48),
       ), child: Text('Desafio Mensal'), onPressed: () => 'salve',),
       SizedBox(height: 10),
        ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 0, 153, 93),
        foregroundColor: Colors.white,
        minimumSize:  Size(232, 48),
       ), child: Text('Reconhecimento'), onPressed: () => 'salve',),
       SizedBox(height: 10),
        ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 0, 153, 93),
        foregroundColor: Colors.white,
        minimumSize:  Size(232, 48),
       ), child: Text('Inovação & Você'), onPressed: () => 'salve',),
       ] 
       ) 
    )
  );
  }
}
