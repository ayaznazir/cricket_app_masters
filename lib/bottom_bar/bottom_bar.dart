
import 'package:cricket_app/color_constant.dart';
import 'package:flutter/material.dart';
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text("Home"),
    Text("2nd"),
    Text("3rd"),
    Text("4th"),
    Text("5th"),

  ];
  int _value = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),

      bottomNavigationBar: BottomNavigationBar(
          items:  const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image(image: AssetImage("images/home.png"),),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image(image: AssetImage("images/bat.png"),),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image(image: AssetImage("images/LIVE.png"),),
              label: "",
            ), BottomNavigationBarItem(
              icon: Image(image: AssetImage("images/union.png"),),
              label: "",
            ), BottomNavigationBarItem(
              icon: Image(image: AssetImage("images/LIVE.png"),),

              label: "",
            ),
          ],
          type: BottomNavigationBarType.fixed,


          selectedIconTheme: const IconThemeData(color: Colors.white, size: 25),
          unselectedIconTheme:  IconThemeData(color: Colors.grey.shade200, size: 20),
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          backgroundColor: blackColor,
          iconSize: 40,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: _onItemTapped,
          elevation: 9
      ),
    );
  }
}
