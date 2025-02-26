import 'package:flutter/material.dart';
import 'package:secondapptest/widgets/app_bar_item.dart';
import 'package:secondapptest/widgets/bottom_nav_item.dart';

class MeusDados extends StatelessWidget {
  const MeusDados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBarItem(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Meus Dados", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary
                ),),
                SizedBox(height: 15,),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 2,
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                  child: Icon(
                    Icons.person,
                    size: 55,
                    color: Color.fromRGBO(0, 61, 37, 1),
                  ),
                ),
                SizedBox(height: 30,),
                    SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nome: Gabriel Duarte",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox( width:200, child: Divider(color: Colors.black,height: 10, thickness: 1)),
                          ],
                        )
                    ),
                SizedBox(height: 15,),
                    SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Matrícula: 12345",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox( width:200, child: Divider(color: Colors.black,height: 10, thickness: 1)),
                          ],
                        )
                    ),
                SizedBox(height: 15,),
                    SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Carteira: 0033123456789",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox( width:200, child: Divider(color: Colors.black,height: 10, thickness: 1)),
                          ],
                        )
                    ),
                SizedBox(height: 15,),
                SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).pushReplacementNamed("/periodicos");
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                " Exames",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 125,),
                              Icon(Icons.keyboard_arrow_right)
                            ],
                          ),
                        ),
                        SizedBox( width:200, child: Divider(color: Colors.black45,height: 10, thickness: 1)),
                      ],
                    )
                ),
                    SizedBox(height: 15,),
                    SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (){
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    " Alterar cadastro",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(width: 65,),
                                  Icon(Icons.keyboard_arrow_right)
                                ],
                              ),
                            ),
                            SizedBox( width:200, child: Divider(color: Colors.black45,height: 10, thickness: 1)),
                          ],
                        )
                    ),
                SizedBox(height: 15,),
                    SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.of(context).pushReplacementNamed("/login");
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Finalizar sessão",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(width: 60,),
                                  Icon(Icons.exit_to_app)
                                ],
                              ),
                            ),
                            SizedBox( width:200, child: Divider(color: Colors.black45,height: 10, thickness: 1)),
                          ],
                        )
                    ),
              ],
            ),
      ),
      bottomNavigationBar: BottomNavItem(),
    );
  }
}
