import 'package:flutter/material.dart';
import 'package:mad_flutter_labs/homepage.dart';

class top_navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.contacts)),
                Tab(icon: Icon(Icons.event_available)),
                Tab(icon: Icon(Icons.note)),
              ],
            ),
            title: Text('Sarosh Flutter Top NavigationBar'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.contacts),
              Icon(Icons.event_available),
              Icon(Icons.note),
            ],
          ),
        ),
      ),
    );
  }
}

class nav_bar extends StatefulWidget {
  @override
  _my_bottom_navigation createState() => _my_bottom_navigation();
}

class _my_bottom_navigation extends State<nav_bar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sarosh Flutter Bottom Navigation Bar'),
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_available),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.brown,
        onTap: _onItemTapped,
      ),
    );
  }
}
