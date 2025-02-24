import 'package:flutter/material.dart';

class AppBarItem  extends StatelessWidget implements PreferredSizeWidget {
  const AppBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor:const Color.fromARGB(255, 230, 240, 236),
        title: Container(
          padding: EdgeInsets.only(right: 25),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset('assets/Vector.png'),
                      Text("1", style: TextStyle(
                          color: Color.fromARGB(130, 0, 0, 0),
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                SizedBox(width: 20,),
                Text("ColaboraUnimed"),
              ],
            ),
        ),

        centerTitle: true,
        automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
