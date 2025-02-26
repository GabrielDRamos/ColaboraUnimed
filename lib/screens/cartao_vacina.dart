import 'package:flutter/material.dart';
import 'package:secondapptest/widgets/app_bar_item.dart';
import 'package:secondapptest/widgets/bottom_nav_item.dart';

class CartaoVacina extends StatelessWidget {
  const CartaoVacina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBarItem(),
      body: Center(
        child: Column(
          children: [
            Text("Cartão de Vacina", style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),),
          ]
        ),
      ),
      bottomNavigationBar: BottomNavItem(),
    );
  }
}
