import 'package:flutter/material.dart';
import 'package:secondapptest/screens/my_home_page.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.title});
  final String title;
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<Login> {
  void _login() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage(title: "ColaboraUnimed")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
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
                      child: Text(
                          style: TextStyle(fontSize: 16),
                          "Realize o Login no aplicativo usando a sua matrícula e senha")),
                  SizedBox(height: 25),
                  SingleChildScrollView(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Digite sua matrícula",
                          filled: true,
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                          border: InputBorder.none),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Digite sua senha",
                          filled: true,
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                          border: InputBorder.none),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 5),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Esqueceu sua senha?",
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: _login,
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 0, 0, 0),
                        elevation: 5,
                        backgroundColor:
                            Theme.of(context).colorScheme.onPrimary,
                        foregroundColor: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text("Acessar"))
                ],
              )),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("versão 1.0",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 0, 153, 92),
                      fontWeight: FontWeight.bold,
                    )),
                Text("Direitos Reservados para",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 0, 153, 92),
                      fontWeight: FontWeight.bold,
                    )),
                Image.asset(
                  'lib/assets/unimed.png',
                  width: 192,
                  height: 70,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
