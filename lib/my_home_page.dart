import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'file:///C:/Flutter_project/walkie_test02/lib/screens/feed_screen.dart';
import 'package:walkie_test02/map_page.dart';
import 'package:walkie_test02/screens/profile_screens.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key, this.title}) :
        super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //하단버튼 위젯 모양 설정
  List<BottomNavigationBarItem> btmNavItems = [
    BottomNavigationBarItem(icon: Icon(Icons.stacked_bar_chart), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.home), label:""),
    BottomNavigationBarItem(icon: Icon(Icons.people), label:""),
  ];

  int _selectedIndex = 0;

  static List<Widget> _screens = <Widget>[
    ProfileScreens(),
    mapPage(),
    FeedScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold( //앱의 기본 구성
      appBar: AppBar(
        title: Text('Walkie'),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      //하단 버튼 위젯
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: btmNavItems,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.lightBlueAccent,
        currentIndex: _selectedIndex,
        onTap: _onBtmItemClick,//버튼 클릭
      ),
    );
  }

  void _onBtmItemClick(int index){
    print(index);
    //extend state class 안에서만 사용가능한 함수
    setState(() {
      _selectedIndex = index;//값을 변화(모양 변화)
    });

  }

}