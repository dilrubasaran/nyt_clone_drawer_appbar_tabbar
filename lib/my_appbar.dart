import 'dart:ui';

import 'package:flutter/material.dart';

import 'my_drawer.dart';

class Appbar extends StatefulWidget implements PreferredSizeWidget {
  final Size size;
  final GlobalKey<ScaffoldState> scaffoldKey;
  const Appbar({
    Key? key,
    required this.size,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  State<Appbar> createState() => _AppbarState();

  @override
  Size get preferredSize => size;
}

class _AppbarState extends State<Appbar> {
  TabBar get _tabBar => TabBar(
        indicatorColor: Colors.white,
        tabs: [
          Tab(
            icon: Icon(
              Icons.home_outlined,
              color: Color(0xFFCA303C),
            ),
          ),
          Tab(
            icon: Icon(
              Icons.book,
              color: Color(0xFFCA303C),
            ),
          ),
          Tab(
            icon: Icon(
              Icons.note_alt_sharp,
              color: Color(0xFFCA303C),
            ),
          ),
          Tab(
            icon: Icon(
              Icons.notifications_none,
              color: Color(0xFFCA303C),
            ),
          ),
        ],
      );
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        child: const Padding(
            padding: EdgeInsets.all(8.0), child: Icon(Icons.draw)),
        onTap: () => widget.scaffoldKey.currentState?.openDrawer(),
      ),
      backgroundColor: Color(0xFFCA303C),
      title: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          suffixIcon: Icon(
            Icons.keyboard_voice,
            color: Colors.white,
          ),
          hintText: "Ara",
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
      //* for custom Tabbar
      bottom: PreferredSize(
        preferredSize: _tabBar.preferredSize,
        child: Material(
          color: Colors.white,
          child: _tabBar,
        ),
      ),
    );
  }
}
