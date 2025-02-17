import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
final String nome;
const HomeButton({ Key? key ,required this.nome}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      child: ElevatedButton(style: ElevatedButton.styleFrom(
        side: BorderSide(color: Colors.greenAccent, width: 1),
        shadowColor: Color.fromARGB(255, 0, 0, 0),
        elevation: 5,
        padding: EdgeInsets.all(18),
        backgroundColor: const Color.fromARGB(255, 0, 153, 93),
        foregroundColor: Colors.white,
        minimumSize:  Size(280, 48),
       ),onPressed: (){}, child: Text(nome)
        ),
    );
  }
}