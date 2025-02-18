import 'package:flutter/material.dart';
import 'package:secondapptest/widgets/app_bar_item.dart';
import 'package:secondapptest/widgets/bottom_nav_item.dart';

class Historico extends StatefulWidget {
  final String title;
  const Historico({super.key, required this.title});

  @override
  State<Historico> createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
  @override
  Widget build(BuildContext context) {
    TableRow tableRow = TableRow(children: <Widget>[
      Container(
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.onPrimary),
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: Text(
            "Data",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      Container(
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.onPrimary),
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: Text(
            "Entrada",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      Container(
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.onPrimary),
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: Text(
            "Saída",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ]);

    TableRow tableRowData = TableRow(children: <Widget>[
      Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 0, 61, 37)),
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: Text(
            "00/00/0000",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 0, 153, 93)),
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: Text(
            "5",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(color: Color.fromARGB(101, 0, 153, 92)),
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: Text(
            "4",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ]);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 240, 236),
      appBar: AppBarItem(),
      bottomNavigationBar: BottomNavItem(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Histórico Emocional",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Legenda",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ]),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 18,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color.fromARGB(255, 0, 153, 89),
                                ),
                                child: Text(
                                  "5 ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Me sinto ótimo(a)",
                                style: TextStyle(
                                    color: const Color.fromARGB(135, 0, 0, 0)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 18,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color.fromARGB(103, 0, 153, 89),
                                ),
                                child: Text(
                                  "4 ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Me sinto bem",
                                style: TextStyle(
                                    color: const Color.fromARGB(135, 0, 0, 0)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 18,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color.fromARGB(255, 128, 128, 128),
                                ),
                                child: Text(
                                  "3 ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Me sinto neutro",
                                style: TextStyle(
                                    color: const Color.fromARGB(135, 0, 0, 0)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 18,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color.fromARGB(102, 0, 0, 255),
                                ),
                                child: Text(
                                  "2",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Não me sinto bem",
                                style: TextStyle(
                                    color: const Color.fromARGB(135, 0, 0, 0)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 18,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color.fromARGB(255, 0, 0, 255),
                                ),
                                child: Text(
                                  "1",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Me sinto mal",
                                style: TextStyle(
                                    color: const Color.fromARGB(135, 0, 0, 0)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromARGB(255, 0, 153, 93)),
                    width: 120,
                    height: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Text(
                                "De acordo com o que foi sinalizado, você está bem!",
                                textAlign: TextAlign.center,
                                softWrap: true,
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Continue!",
                                softWrap: true,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ), // antes da tabela
          SizedBox(
            width: 300,
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Últimos 10 dias",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: const Color.fromARGB(130, 0, 0, 0),
                        fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Table(
                  border: TableBorder.all(color: Colors.white, width: 2),
                  children: <TableRow>[
                    tableRow,
                    tableRowData,
                    tableRowData,
                    tableRowData,
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
