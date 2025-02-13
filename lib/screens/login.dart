import 'package:flutter/material.dart';
import 'package:secondapptest/screens/my_home_page.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;


  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login>{

  void _login() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: "ColaboraUnimed")));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 240, 236),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 240, 236),
        title: Text("ColaboraUnimed"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                    alignment: Alignment.centerLeft,
                    child:  Text(style: TextStyle(
                      fontSize: 16
                    ), "Realize o Login no aplicativo usando a sua matrícula e senha")
                    ),
                    SizedBox(height: 25),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Digite sua matrícula", filled: true, fillColor: Color.fromARGB(255, 255, 255, 255), border: InputBorder.none),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 20),
                    TextFormField(decoration: InputDecoration(labelText: "Digite sua senha",  filled: true, fillColor: Color.fromARGB(255, 255, 255, 255), border: InputBorder.none),
                    obscureText: true, ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                    child: Text(
                    "Esqueceu sua senha?", 
                    style: TextStyle(
                      fontSize: 14,
                     color: Color.fromARGB(255, 0, 153, 92) ,
                    ),),
                    ), 
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _login, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 0, 153, 92),
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                    ) , child: Text("Acessar"))
                  ],
              )),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("versão 1.0", style: TextStyle(
                      fontSize: 14,
                     color: Color.fromARGB(255, 0, 153, 92) ,
                      fontWeight: FontWeight.bold,
                    ) ),
                Text("Direitos Reservados para", style: TextStyle(
                      fontSize: 14,
                     color: Color.fromARGB(255, 0, 153, 92) ,
                     fontWeight: FontWeight.bold,
                    ) )
              ],
            ),
          )
        ],
      ),
    );
  }
}