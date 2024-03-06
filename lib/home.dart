import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/profile/home.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:flutter/material.dart';

import 'agent/home.dart';
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

  void _onItemTapped(int index) {
    if (mounted) {
      setState(() {
        _selectedPage = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [];
    List<BottomNavigationBarItem> list = [];
    pages.add(const CardHome());
    pages.add(const CryptoHome());

    list.add(BottomNavigationBarItem(
      icon: const Icon(Icons.credit_card),
      label: S.of(context).main_home_Card,
    ));
    list.add(BottomNavigationBarItem(
      icon: const Icon(Icons.currency_bitcoin_sharp),
      label: S.of(context).main_home_Crypto,
    ));
    if (CommonService.userInfo?.userType.toInt() == 0) {
      pages.add(const AgentHome());
      list.add(BottomNavigationBarItem(
        icon: const Icon(Icons.support_agent),
        label: S.of(context).main_home_agent,
      ));
    }

    pages.add(const ProfileHome());
    list.add(BottomNavigationBarItem(
      icon: const Icon(Icons.person),
      label: S.of(context).main_home_Profile,
    ));

    return Scaffold(
      body: Center(child: pages.elementAt(_selectedPage)),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          items: list),
    );
  }
}
