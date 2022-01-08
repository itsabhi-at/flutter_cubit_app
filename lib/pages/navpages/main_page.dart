// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_cubit/pages/navpages/bar_item_page.dart';
import 'package:flutter_cubit/pages/navpages/homepage.dart';
import 'package:flutter_cubit/pages/navpages/my_page.dart';
import 'package:flutter_cubit/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[0],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(
              Icons.apps,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('Bar'),
            icon: Icon(
              Icons.bar_chart_sharp,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('Search'),
            icon: Icon(
              Icons.search,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('My'),
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
    );
  }
}
