import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'ColaboraUnimed'),
      
    );
  }
}

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
  
  final List<String> emojis = ["😡", "😟", "😐", "😊", "😍"];

  

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 242, 242),
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        centerTitle: true,
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
        bottomLeft: Radius.circular(24),
        bottomRight:  Radius.circular(24)
       ),
       child: Container(
        height: 60,
         child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 9, 86, 11),
          selectedItemColor: Color.fromARGB(255, 9, 86, 11),
          unselectedItemColor: Color.fromARGB(255, 9, 86, 11),
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
                child: const Icon(Icons.home,size: 40, color: Colors.green,),
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
              child: const Icon(Icons.search,size: 40, color: Colors.green,),
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
              child: const Icon(Icons.play_arrow, size: 40, color: Colors.green,),
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
              child: const Icon(Icons.person, size: 40, color: Colors.green,),
            ), 
            label: '',
            ),
          ]),
       ), 
      ),
      body: Container(
        height: 150,
       padding: EdgeInsets.all(14),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
        Container(
         decoration: BoxDecoration(
          color: const Color.fromARGB(255, 243, 235, 235),
          borderRadius: BorderRadius.circular(15),
         ),
         child: Column(
            children: [
              Text("Como você está se sentindo hoje?", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: emojis.map((emoji) {
                    return GestureDetector(
                      onTap: () {
                        print("Emoji selecionado: $emoji");
                      },
                      child: Text(
                        emoji,
                        style: TextStyle(fontSize: 50),
                      ),
                    );
                  }).toList()
                ),
              ),
              Text("Faça seu check-in",  style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),)
            ],
         )
        ),
        SizedBox(height: 40),
        ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 9, 86, 11),
        foregroundColor: Colors.white,
        minimumSize: Size(280, 80),
       ), child: Text('Comprometimento'), onPressed: () => 'salve',),
       SizedBox(height: 10),
        ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 9, 86, 11),
        foregroundColor: Colors.white,
        minimumSize: Size(280, 80),
       ), child: Text('Escolha Premiada'), onPressed: () => 'salve',),
       SizedBox(height: 10),
        ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 9, 86, 11),
        foregroundColor: Colors.white,
        minimumSize: Size(280, 80),
       ), child: Text('Ranking'), onPressed: () => 'salve',),
       SizedBox(height: 10),
        ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 9, 86, 11),
        foregroundColor: Colors.white,
        minimumSize: Size(280, 80),
       ), child: Text('Desafio Mensal'), onPressed: () => 'salve',),
       SizedBox(height: 10),
        ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 9, 86, 11),
        foregroundColor: Colors.white,
        minimumSize: Size(280, 80),
       ), child: Text('Reconhecimento'), onPressed: () => 'salve',),
       SizedBox(height: 10),
        ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 9, 86, 11),
        foregroundColor: Colors.white,
        minimumSize: Size(280, 80),
       ), child: Text('Inovação & Você'), onPressed: () => 'salve',),
       ] 
       ) 
    )
  );
  }
}
