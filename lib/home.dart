import 'package:flutter/material.dart';

import 'cards/home.dart';
import 'cryptos/home.dart';
import 'profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;

  @override
  void initState() {
    super.initState();
    _selectedPage = 0;
  }

  static final List<Widget> _pages = <Widget>[
    const CardHome(),
    const CryptoHome(),
    const ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
          ]),
    );
  }
}
