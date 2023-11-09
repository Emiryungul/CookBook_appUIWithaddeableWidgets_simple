import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yeniproject/myhomepage.dart';
import 'package:yeniproject/profile.dart';
import 'package:yeniproject/tasks.dart';

class Pagemain extends StatefulWidget {
  const Pagemain({super.key});

  @override
  State<Pagemain> createState() => _PagemainState();
}

class _PagemainState extends State<Pagemain> {
  int _selectedIndex = 0;

  void _navigateBottomNavBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    MyHomePage(),
    Tasks(),
    profile(),
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        selectedItemColor: Colors.green.shade600,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        elevation: 10,
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task_sharp),
            label: 'tasks',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.black
          ),
        ],
      ),

    );

  }
}