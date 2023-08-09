import 'package:flutter/material.dart';

import 'card.dart';
import 'cryptos/home.dart';
import 'profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedPage = 0;

  static const List<Widget> _titles = [
    Text('Card'),
    Text('Crypto'),
    Text('Profile'),
  ];

  static const List<Widget> _pages = <Widget>[
    CardPage(),
    CryptoHome(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });

    // print('Tap: $_selectedIndex');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: _titles[_selectedPage],
      // ),

      body: Center(child: _pages.elementAt(_selectedPage)),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_bitcoin_sharp),
            label: 'Crypto',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ]
      ),
    );
  }
}
