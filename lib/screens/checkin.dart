import 'package:flutter/material.dart';
import 'package:secondapptest/widgets/app_bar_item.dart';
import 'package:secondapptest/widgets/bottom_nav_item.dart';
import 'package:secondapptest/widgets/alert_dialogo.dart';

class Checkin extends StatefulWidget {
  const Checkin({super.key, required this.title});

  final String title;

  @override
  State<Checkin> createState() => _CheckinState();
}

class _CheckinState extends State<Checkin> {
  String? selectedOptionEmotional, selectedOptionFisic;
  List<String> emojis = ["☹", "🙁", "😐", "🙂", "😀"];
  List<Color> colorsCheckBox = [
    Color.fromARGB(255, 0, 0, 139),
    Color.fromARGB(130, 0, 0, 255),
    Color.fromARGB(255, 128, 128, 128),
    Color.fromARGB(130, 0, 153, 93),
    Color.fromARGB(255, 0, 153, 93),
  ];

  void _handleCheckBoxChange(String value) {
    setState(() {
      selectedOptionEmotional = value;
    });
  }

  void _handleCheckBoxFisicChange(String value) {
    setState(() {
      selectedOptionFisic = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 240, 236),
      appBar: AppBarItem(),
      bottomNavigationBar: BottomNavItem(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  "Checkin",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 153, 93),
                  ),
                ),
                Text("Gostaríamos de cuidar de você, nos ajude!", textAlign: TextAlign.center,),
                Text("Como você está agora emocional e fisicamente?", textAlign: TextAlign.center),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(children: [
              Container(
                width: 340,
                color: Theme.of(context).colorScheme.primary,
                child: Center(
                  child: Text(
                    "Emocionalmente",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: emojis
                    .map((emoji) => Text(emoji, style: TextStyle(fontSize: 30)))
                    .toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(emojis.length, (index) {
                  return Checkbox(
                    side: BorderSide(color: colorsCheckBox[index], width: 2),
                    value: selectedOptionEmotional == emojis[index],
                    onChanged: (bool? checked) {
                      if (checked == true) {
                        _handleCheckBoxChange(emojis[index]);
                      }
                    },
                  );
                }).toList(),
              )
            ]),
            SizedBox(
              height: 15,
            ),
            Column(children: [
              Container(
                width: 350,
                color: Theme.of(context).colorScheme.primary,
                child: Center(
                  child: Text(
                    "Fisicamente",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: emojis
                    .map((emoji) => Text(emoji, style: TextStyle(fontSize: 30)))
                    .toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(emojis.length, (index) {
                  return Checkbox(
                    side: BorderSide(
                      color: colorsCheckBox[index],
                      width: 2,
                    ),
                    value: selectedOptionFisic == emojis[index],
                    onChanged: (bool? checked) {
                      if (checked == true) {
                        _handleCheckBoxFisicChange(emojis[index]);
                      }
                    },
                  );
                }).toList(),
              )
            ]),
            SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shadowColor: Color.fromARGB(255, 0, 0, 0),
                elevation: 5,
                backgroundColor: Theme.of(context).colorScheme.onPrimary,
                foregroundColor: Colors.white,
                minimumSize: Size(180, 42),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Borda arredondada
                ),
              ),
              child: Text('Enviar'),
              onPressed: () => AlertDialogo.showCheckinDialog(context),
            ),
          ],
        ),
      ),
    );
  }
}
