import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({super.key, required this.title});
  final String title;
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<Login> {
  TextEditingController cpfController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  Future<void> _login() async {
    setState(() {
      isLoading = true;
    });

    final url = Uri.parse(
        "https://samuweb.unimedjp.com.br/ords/totvsprod/aac/aplicativo_cliente2/fazer_login_teste");

    try {
      final response = await http.post(url,
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer HAyroaxvf0bLllFpOUo8EA'
          },
          body: json.encode({
            'cpf': cpfController.text,
            'senha': senhaController.text,
          }));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        print(data);

        if (data['resultado'].toString().toLowerCase() == 'true') {
          Navigator.pushReplacementNamed(context, '/home');
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Dados inválidos!"),
          ));
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Ocorreu um erro! ${response.statusCode}"),
        ));
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Falha na operação"),
      ));
    }
    //Navigator.of(context).pushReplacementNamed("/home");
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final availableHeight =
        mediaQuery.size.height - kToolbarHeight - mediaQuery.padding.top;

    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          title: Text("ColaboraUnimed"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(constraints: BoxConstraints(
            minHeight: availableHeight
          ),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                  style: TextStyle(fontSize: 16),
                                  "Realize o Login no aplicativo usando a sua matrícula e senha")),
                          SizedBox(height: 25),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Insira um cpf';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              controller: cpfController,
                              maxLength: 11,
                              decoration: InputDecoration(
                                  counterText: "",
                                  labelText: "Digite seu cpf",
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: InputBorder.none),
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: TextFormField(
                              validator: (String? value) {
                                if (value != null && value.isEmpty) {
                                  return 'Insira uma senha';
                                }
                                return null;
                              },
                              controller: senhaController,
                              decoration: InputDecoration(
                                  labelText: "Digite sua senha",
                                  filled: true,
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  border: InputBorder.none),
                              obscureText: true,
                            ),
                          ),
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
                        ],
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Color.fromARGB(255, 0, 0, 0),
                            elevation: 5,
                            backgroundColor: Theme.of(context).colorScheme.onPrimary,
                            foregroundColor: Colors.white,
                            padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _login();
                            }
                          },
                          child: Text("Acessar")),
                      SizedBox(
                        height: 50,
                      ),
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
                        'assets/unimed.png',
                        width: 192,

                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}
