import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:secondapptest/widgets/app_bar_item.dart';
import 'package:secondapptest/widgets/bottom_nav_item.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBarItem(),
      bottomNavigationBar: BottomNavItem(),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Perfil",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                      Icons.person_4,
                      size: 45,
                      color: Color.fromRGBO(0, 61, 37, 1),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                              children: [
                            TextSpan(
                              text: 'Nome: ',
                            ),
                            TextSpan(
                                text: "Gabriel Duarte Ramos",
                                style: TextStyle(color: Colors.black45))
                          ])),
                      RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                              children: [
                            TextSpan(
                              text: 'Matrícula: ',
                            ),
                            TextSpan(
                                text: "12345",
                                style: TextStyle(color: Colors.black45))
                          ]))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: Icon(
                            Icons.health_and_safety_sharp,
                            size: 40,

                            color: Color.fromRGBO(0, 61, 37, 1),
                          )),
                      Text(
                        "Cartão de vacinas",
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: Icon(
                              Icons.card_giftcard,
                              size: 40,
                              color: Color.fromRGBO(0, 61, 37, 1),
                            )),
                        Text(
                          "Meus Dados",
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: Icon(
                              Icons.healing,
                              size: 40,
                              color: Color.fromRGBO(0, 61, 37, 1),

                            )),
                        Text(
                          "Exames Periódicos",
                          textAlign: TextAlign.center,
                          softWrap: true,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
