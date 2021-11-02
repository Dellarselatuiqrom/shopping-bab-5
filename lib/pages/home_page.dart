import 'package:shopping/models/Item.dart';
import 'package:shopping/widgets/card_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<Item> items = [
    Item(
        name: 'Rice',
        price: 12000,
        description: 'Rice have price 12000/Kilogram'),
    Item(
        name: 'Sugar',
        price: 13000,
        description: 'Sugar have price 13000/Kilogram'),
    Item(
        name: 'Coffee Bean',
        price: 30000,
        description: 'Coffee Bean have price 30000/Kilogram')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: CardHome(item: item),
            );
          },
        ),
      ),
    );
  }
}
