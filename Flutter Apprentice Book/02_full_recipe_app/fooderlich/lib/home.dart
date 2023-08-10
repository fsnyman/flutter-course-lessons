//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Homestate createState() => Homestate();
}

class Homestate extends State<Home> {
  int _selectedIndex = 1;
  List<Widget> pages = <Widget>[
    const Card1(),
    const Card2(),
    const Card3(),
  ];

  void _onItemTapped(int index) {
    //this is called a handler
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fooderlich', style: Theme.of(context).textTheme.titleLarge),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Recipe',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attribution),
            label: 'Author',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_document),
            label: 'Recipe Trends',
          ),
        ],
      ),
    );
  }
}
