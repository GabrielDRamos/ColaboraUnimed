import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 0, 61, 37),
      height: 85,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FloatingActionButton.small(onPressed: (){}, backgroundColor: Colors.white, child: Icon(Icons.home, color: Colors.green ,size: 40,)),
            FloatingActionButton.small(onPressed: (){}, backgroundColor: Colors.white, child: Icon(Icons.edit_document, color: Colors.green ,size: 40,)),
            FloatingActionButton.small(onPressed: (){}, backgroundColor: Colors.white, child: Icon(Icons.play_circle, color: Colors.green ,size: 40,)),
            FloatingActionButton.small(onPressed: (){}, backgroundColor: Colors.white, child: Icon(Icons.person, color: Colors.green ,size: 40,)),

          ],
        )
    );
  }
}
