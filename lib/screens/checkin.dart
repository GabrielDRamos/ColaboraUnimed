import 'package:flutter/material.dart';
import 'package:secondapptest/screens/historico.dart';
import 'package:secondapptest/screens/my_home_page.dart';
import 'package:secondapptest/widgets/bottom_nav_item.dart';
import 'package:secondapptest/widgets/alert_dialogo.dart';

class Checkin extends StatefulWidget {
  const Checkin({super.key, required this.title});

  final String title;

  @override
  State<Checkin> createState() => _CheckinState();
}

class _CheckinState extends State<Checkin> {
  String? selectedOption;
  List<String> emojis = ["☹", "🙁", "😐", "🙂", "😀"];


  void _handleCheckBoxChange(String value){
    setState(() {
      selectedOption = value;
    });
  }


  @override
  Widget build(BuildContext context) {
   return Scaffold(
       backgroundColor: Color.fromARGB(255, 230, 240, 236),
       appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 240, 236),
        title: Text("Checkin", style: TextStyle(
          color: const Color.fromARGB(255, 0, 153, 93),
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
       automaticallyImplyLeading: false,
       // leading: IconButton(onPressed: () => "fon" , 
       // icon: Image.asset('lib/assets/icons/heart-regular.svg', width: 24, height: 24,)) => resolver erro
      ),

       bottomNavigationBar: BottomNavItem(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Text("Gostaríamos de cuidar de você, nos ajude!"),
                Text("Como você está agora emocional e fisicamente?"),
              ],
            ),
            SizedBox(height: 20,),
            Column(
              children: [
              Container(
              width: 340,
              color: const Color.fromARGB(51, 95, 248, 187) ,
              child:  Center(
                child: Text("Emocionalmente", style: TextStyle(
                  color: Color.fromARGB(255, 0, 153, 93),
                  fontSize: 16,
                ),),
              ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: emojis.map((emoji) => Text(emoji, style: TextStyle(
                  fontSize: 30
                  ))).toList(),
              ),
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: emojis.map((emoji) {
                return Checkbox(
                  value: selectedOption == emoji,
                  onChanged: (bool? checked) {
                    if (checked == true) {
                      _handleCheckBoxChange(emoji);
                    }
                  },
                );
              }).toList(),
            )
            ]
            ),
            SizedBox(height: 15,),
             Column(
              children: [
              Container(
              width: 350,
              color: const Color.fromARGB(51, 95, 248, 187) ,
              child:   Center(
                child: Text("Fisicamente", style: TextStyle(
                  color: Color.fromARGB(255, 0, 153, 93),
                  fontSize: 16,
                ),),
              ),
              ),
             
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: emojis.map((emoji) => Text(emoji, style: TextStyle(fontSize: 30))).toList(),
              ),
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: emojis.map((emoji) {
                return Checkbox(
                  value: selectedOption == emoji,
                  onChanged: (bool? checked) {
                    if (checked == true) {
                      _handleCheckBoxChange(emoji);
                    }
                  },
                );
              }).toList(),
            )
            ]
            ),
           
        SizedBox(height: 50),
        ElevatedButton(style: ElevatedButton.styleFrom(
        shadowColor: Color.fromARGB(255, 0, 0, 0),
        elevation: 5,
        backgroundColor: const Color.fromARGB(255, 0, 153, 93),
        foregroundColor: Colors.white,
        minimumSize:  Size(180, 42),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Borda arredondada
      ),
       ), child: Text('Enviar'), onPressed: () => AlertDialogo.showCheckinDialog(context),),
          ],
        ),

      ),
   );
  }
}