import 'package:flutter/material.dart';
import 'home_page.dart';

/// 创建一个页面 ，底部导航栏有五个按钮，点击按钮切换页面
class TabbarPage extends StatefulWidget {
  @override
  _TabbarPageState createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> {

  final _pageList = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pageList[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '首页',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: '列表',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'xx',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: '工具',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: '设置',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
        )
    );
  }

}
