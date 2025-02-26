import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:secondapptest/widgets/app_bar_item.dart';
import 'package:secondapptest/widgets/bottom_nav_item.dart';
import 'package:secondapptest/widgets/home_button.dart';

class Questionarios extends StatelessWidget {
  const Questionarios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBarItem(),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Questionários", style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              SizedBox(height: 80,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                          },
                          icon: SvgPicture.asset(
                            colorFilter: const ColorFilter.mode(
                                Color.fromRGBO(0, 61, 37, 1), BlendMode.srcIn),
                            width: 40,
                            height: 40,
                            'assets/heart-circle-plus-solid.svg',
                            semanticsLabel: 'Bem-estar',
                          )),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "Avalie seu bem-estar",
                          textAlign: TextAlign.center,
                          softWrap: true,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                          },
                          icon: SvgPicture.asset(
                            colorFilter: const ColorFilter.mode(
                                Color.fromRGBO(0, 61, 37, 1), BlendMode.srcIn),
                            width: 40,
                            height: 40,
                            'assets/heart-circle-exclamation-solid.svg',
                            semanticsLabel: 'Ansiedade',
                          )),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "Avalie sua ansiedade",
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),

                  Column(
                    children: [
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                          },
                          icon: SvgPicture.asset(
                            colorFilter: const ColorFilter.mode(
                                Color.fromRGBO(0, 61, 37, 1), BlendMode.srcIn),
                            width: 40,
                            height: 40,
                            'assets/heart-circle-bolt-solid.svg',
                            semanticsLabel: 'Burnout',
                          )),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "Avalie seu Burnout",
                          textAlign: TextAlign.center,
                          softWrap: true,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),

                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                        },
                        icon: SvgPicture.asset(
                          colorFilter: const ColorFilter.mode(
                              Color.fromRGBO(0, 61, 37, 1), BlendMode.srcIn),
                          width: 40,
                          height: 40,
                          'assets/heart-circle-minus-solid.svg',
                          semanticsLabel: 'Depressão',
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          "Avalie sua depressão",
                          textAlign: TextAlign.center,
                          softWrap: true,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),

                  Column(
                    children: [
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                          },
                          icon: SvgPicture.asset(
                            colorFilter: const ColorFilter.mode(
                                Color.fromRGBO(0, 61, 37, 1), BlendMode.srcIn),
                            width: 40,
                            height: 40,
                            'assets/hand-holding-heart-solid.svg',
                            semanticsLabel: 'Satisfação de vida',
                          )),
                      SizedBox(
                        width: 120,
                        child: Text(
                          "Satisfação de vida",
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
          SizedBox(height: 100,),
          HomeButton(nome: "Dúvidas?"),

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavItem(),
    );
  }
}
