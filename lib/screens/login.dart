import 'package:flutter/material.dart';
import 'package:secondapptest/screens/my_home_page.dart';

class Login extends StatefulWidget {
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Text("ColaboraUnimed"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Realize o Login no aplicativo usando a sua matrícula e senha"),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(labelText: "Digite sua matrícula", border: OutlineInputBorder()),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20),
                TextFormField(decoration: InputDecoration(labelText: "Digite sua senha", border: OutlineInputBorder()),
                obscureText: true, ),
                SizedBox(height: 5),
                Text("Esqueceu sua senha?"),
                SizedBox(height: 20),
                ElevatedButton(onPressed: _login, child: Text("Entrar"))
              ],
          )),
        ),
      )
    );
  }
}