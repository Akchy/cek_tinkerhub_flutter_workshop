import 'package:cek_tinkerhub/convert.dart';
import 'package:cek_tinkerhub/drawerWidget.dart';
import 'package:cek_tinkerhub/image.dart';
import 'package:cek_tinkerhub/student.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  int _selectedIndex = 0;

  static final List<Widget> _widgetList = <Widget>[
    const ProfilePicPage(),
    Students()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      drawer: const DrawerWidget(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: _widgetList.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.yellowAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              label: 'Home'

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Education'
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }

  void _onItemTap(int index){
    print('Tap Triggered $index');
    setState(() {
      _selectedIndex=index;
    });
  }
}
