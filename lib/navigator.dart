import 'package:flashy_tab_bar/flashy_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:test/pages/home.dart';
import 'package:test/pages/search.dart';

class NavBarForThisApp extends StatefulWidget {
  const NavBarForThisApp({Key? key}) : super(key: key);

  @override
  State<NavBarForThisApp> createState() => _NavBarForThisAppState();
}

class _NavBarForThisAppState extends State<NavBarForThisApp> {
  var _selectedIndex = 0;
  var currentPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentPage = HomePage();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text("JOLU",
              style: TextStyle(
                  color: Colors.black54, fontWeight: FontWeight.bold)),
        ),
      ),
      body: currentPage,
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
          if (index == 0) {
            currentPage = HomePage();
            setState(() {});
          } else if (index == 1) {
            currentPage = SearchPage();
            setState(() {});
          }
        }),
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.chat),
            title: Text('Messeges'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
