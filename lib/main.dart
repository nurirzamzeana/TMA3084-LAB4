import 'package:flutter/material.dart';
import 'menu.dart';
import 'vegetable_pizza.dart';
import 'cheese_pizza.dart';
import 'fries.dart';

void main() {
  runApp(const PizzaStoreApp());
}

class PizzaStoreApp extends StatelessWidget {
  const PizzaStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pizza Store',
      initialRoute: 'menu',
      routes: {
        'menu': (context) => const MenuScreen(),
        'vegetable': (context) => const VegetablePizzaScreen(),
        'cheese': (context) => const CheesePizzaScreen(),
        'fries': (context) => const FriesScreen(),
      },
    );
  }
}