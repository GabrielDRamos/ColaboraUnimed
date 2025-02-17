import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
final IconData icon;
const BottomNavItem({ super.key , required this.icon});

  @override
  Widget build(BuildContext context) {
          return Container(
            width: 50, // Aumenta a área do toque
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(icon, size: 50, color: Color.fromARGB(255, 0, 61, 37)),
          );
    }
}