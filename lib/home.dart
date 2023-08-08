import 'package:flutter/material.dart';
import 'package:nyt_clone_drawer_appbar_tabbar/my_appbar.dart';
import 'package:nyt_clone_drawer_appbar_tabbar/my_drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        key: scaffoldKey,
        appBar: Appbar(
          scaffoldKey: scaffoldKey,
          size: const Size(20, 120),
        ),
        drawer: const My_Drawer(),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text(
                "Home",
                style: TextStyle(
                  color: Color(0xFFCA303C),
                ),
              ),
            ),
            Center(
              child: Text(
                "Tarif Defteri",
                style: TextStyle(
                  color: Color(0xFFCA303C),
                ),
              ),
            ),
            Center(
              child: Text(
                "Tarifler",
                style: TextStyle(
                  color: Color(0xFFCA303C),
                ),
              ),
            ),
            Center(
              child: Text(
                "Bildirimler",
                style: TextStyle(
                  color: Color(0xFFCA303C),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
