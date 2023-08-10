import 'package:awallet/bean/global_state.dart';
import 'package:flutter/material.dart';

import 'card.dart';
import 'crypto.dart';
import 'cryptos/home.dart';
import 'profile.dart';

class HomePage extends StatefulWidget {
  final int showIndex;

  const HomePage({super.key, this.showIndex = 0});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;

  @override
  void initState() {
    super.initState();
    _selectedPage = widget.showIndex;
    if (_selectedPage == 1) {
      if (GlobalState.isExistBtcAddress) {
        _pages[1] = const CryptoHome();
      } else {
        _pages[1] = const CryptoPage();
      }
    }
  }

  static const List<Widget> _titles = [
    Text('Card'),
    Text('Crypto'),
    Text('Profile'),
  ];

  static final List<Widget> _pages = <Widget>[
    const CardPage(),
    const CryptoHome(),
    const ProfilePage()
  ];

  void _onItemTapped(int index) {
    if (index == 1) {
      if (GlobalState.isExistBtcAddress) {
        _pages[1] = const CryptoHome();
      } else {
        _pages[1] = const CryptoPage();
      }
    }
    setState(() {
      _selectedPage = index;
    });
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
          ]),
    );
  }
}
