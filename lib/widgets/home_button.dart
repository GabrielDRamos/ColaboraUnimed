import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
final String nome;
const HomeButton({ super.key ,required this.nome});

  @override
  Widget build(BuildContext context){
    return  ElevatedButton(style: ElevatedButton.styleFrom(
        side: BorderSide(color: Colors.greenAccent, width: 1),
        shadowColor: Colors.black,
        elevation: 5,
        padding: EdgeInsets.all(18),
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        foregroundColor: Colors.white,
        minimumSize:  Size(280, 48),
       ),onPressed: (){}, child: Text(nome)
        );

  }
}