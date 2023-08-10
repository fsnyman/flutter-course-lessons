import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'dart:developer';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                //makes the image underneath darker
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(16),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Icon(Icons.book, color: Colors.grey, size: 40),
                  const SizedBox(height: 8),
                  Text('Recipe Trends', style: FooderlichTheme.darkTextTheme.displayMedium),
                  const SizedBox(height: 30),
                ])),
            Center(
                child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 12, //main axis spacing (vertical)
              runSpacing: 12, //cross axis spacing (horizontal)
              children: [
                Chip(
                    label: Text(
                      'Healthy',
                      style: FooderlichTheme.darkTextTheme.bodyLarge,
                    ),
                    elevation: 10,
                    shadowColor: Colors.red.withOpacity(0.5),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () => log('delete')),
                Chip(
                    label: Text(
                      'Vegan',
                      style: FooderlichTheme.darkTextTheme.bodyLarge,
                    ),
                    elevation: 10,
                    shadowColor: Colors.red.withOpacity(0.5),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () => log('delete')),
                Chip(
                    label: Text(
                      'Carrots',
                      style: FooderlichTheme.darkTextTheme.bodyLarge,
                    ),
                    elevation: 10,
                    shadowColor: Colors.red.withOpacity(0.5),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () => log('delete')),
                Chip(
                    label: Text(
                      'Meat',
                      style: FooderlichTheme.darkTextTheme.bodyLarge,
                    ),
                    elevation: 10,
                    shadowColor: Colors.red.withOpacity(0.5),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () => log('delete')),
                Chip(
                    label: Text(
                      'Pizza',
                      style: FooderlichTheme.darkTextTheme.bodyLarge,
                    ),
                    elevation: 10,
                    shadowColor: Colors.red.withOpacity(0.5),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () => log('delete')),
                Chip(
                    label: Text(
                      'Pasta',
                      style: FooderlichTheme.darkTextTheme.bodyLarge,
                    ),
                    elevation: 10,
                    shadowColor: Colors.red.withOpacity(0.5),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () => log('delete')),
                Chip(
                    label: Text(
                      'Curry',
                      style: FooderlichTheme.darkTextTheme.bodyLarge,
                    ),
                    elevation: 10,
                    shadowColor: Colors.red.withOpacity(0.5),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () => log('delete')),
                Chip(
                    label: Text(
                      'Dessert',
                      style: FooderlichTheme.darkTextTheme.bodyLarge,
                    ),
                    elevation: 10,
                    shadowColor: Colors.red.withOpacity(0.5),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () => log('delete')),
                Chip(
                    label: Text(
                      'Bread',
                      style: FooderlichTheme.darkTextTheme.bodyLarge,
                    ),
                    shadowColor: Colors.red.withOpacity(0.5),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    elevation: 10,
                    onDeleted: () => log('delete')),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
