import 'package:fashion_ecommerce_app/Screens/screens.dart';
import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget {
  static const routeName = '/NavScreen';
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  List<Widget> _screens = [
    ShopScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  final Map<String, IconData> _icons = const {
    'Home': Icons.home,
    'Notification': Icons.notifications,
    'Favorite': Icons.favorite,
    'Profile': Icons.dashboard,
  };
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffFFFFFF),
        items: _icons
            .map((title, icon) => MapEntry(
                title,
                BottomNavigationBarItem(
                  icon: Icon(
                    icon,
                    size: 30.0,
                  ),
                  label: title,
                )))
            .values
            .toList(),
        currentIndex: _currentindex,
        selectedItemColor: Color(0xffC3A9D8),
        selectedFontSize: 11.0,
        unselectedItemColor: Color(0xffE2DEDF),
        unselectedFontSize: 11.0,
        onTap: (index) => setState(() => _currentindex = index),
      ),
    );
  }
}
