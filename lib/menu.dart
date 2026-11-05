import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Android ATC Pizza Place'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          buildMenuItem(
            context,
            'Vegetable Pizza',
            'assets/images/pizza_1.png',
            'vegetable',
          ),
          buildMenuItem(
            context,
            'Cheese Pizza',
            'assets/images/pizza_2.png',
            'cheese',
          ),
          buildMenuItem(
            context,
            'Fries',
            'assets/images/fries.png',
            'fries',
          ),
        ],
      ),
    );
  }

  Widget buildMenuItem(
    BuildContext context,
    String name,
    String image,
    String route,
  ) {
    return Card(
      color: Colors.orange,
      margin: const EdgeInsets.all(10),
      child: ListTile(
        leading: Image.asset(
          image,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
      ),
    );
  }
}