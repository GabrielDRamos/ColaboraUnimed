import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.title});
  final String title;
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<Login> {
  TextEditingController matriculaController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  final _formKey  = GlobalKey<FormState>();


  void _login() {
    Navigator.of(context).pushReplacementNamed("/home");
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
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
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value){
                            if(value!.isEmpty || int.parse(value) < 0) {
                              return 'Insira uma matrícula';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.number,
                          controller: matriculaController,
                          maxLength: 5,
                          decoration: InputDecoration(
                              counterText: "",
                              labelText: "Digite sua matrícula",
                              filled: true,
                              fillColor: Colors.white,
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (String? value){
                            if(value != null && value.isEmpty){
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
                        onPressed: (){
                          if(_formKey.currentState!.validate()){
                            print(senhaController.text);
                            _login();
                            }
                          },
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
                ),
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
      ),
    );
  }
}
