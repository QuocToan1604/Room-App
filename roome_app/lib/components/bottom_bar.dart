import 'package:flutter/material.dart';
import 'package:roome_app/components/custom_text_field.dart';
import 'package:roome_app/page/details_page.dart';
import 'package:roome_app/page/home_page.dart';
import 'package:roome_app/page/log_and_reg.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    LoginAndRegister(),
    Details_Page()
  ];
    void _onItemTapped(int index){
      setState(() {
        _selectedIndex = index;
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF57D2C1),
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Explore',),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label:'Enjoy'),
        BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: 'Profile'),
      ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
