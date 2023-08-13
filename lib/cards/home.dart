import 'package:flutter/material.dart';

class CardHome extends StatefulWidget {
  const CardHome({super.key});

  @override
  State<CardHome> createState() => _CardHomeState();
}

class _CardHomeState extends State<CardHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  TabBar buildTabBar() {
    return TabBar(
        controller: _tabController, tabs: const [
      Tab(
        child: Text(
          'Account',
          style: TextStyle(
            color: Color(0xFF4A92FF),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      Tab(
        child: Text(
          'Card',
          style: TextStyle(
            color: Color(0xFF999999),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ]);
  }

  Widget getTabBarPages() {
    return TabBarView(controller: _tabController, children: const <Widget>[
      Text(
        "Account",
      ),
      Text(
        "Card",
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        titleSpacing: 0,
        title: const Row(
          children: [
            Image(
                width: 24,
                height: 33,
                image: AssetImage("asset/images/logo_head.png")),
            Text('Card',
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                )),
          ],
        ),
        bottom: buildTabBar(),
      ),
      body: getTabBarPages(),
    );
  }
}
