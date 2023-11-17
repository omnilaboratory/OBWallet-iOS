import 'package:awallet/profile/home.dart';
import 'package:awallet/shop/home.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:flutter/material.dart';

import 'cards/home.dart';
import 'cryptos/home.dart';

class HomePage extends StatefulWidget {
  final int goToPage;

  const HomePage({super.key, required this.goToPage});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;

  @override
  void initState() {
    GlobalParams.eventBus.on().listen((event) {
      if (event == "goToCrypto") {
        _onItemTapped(1);
      }
    });

    super.initState();
    _selectedPage = widget.goToPage;
  }

  static final List<Widget> _pages = <Widget>[
    const CardHome(),
    const CryptoHome(),
    const ShopHome(),
    const ProfileHome()
  ];

  void _onItemTapped(int index) {
    if (mounted) {
      setState(() {
        _selectedPage = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages.elementAt(_selectedPage)),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
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
              icon: Icon(Icons.shop),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]),
    );
  }
}
