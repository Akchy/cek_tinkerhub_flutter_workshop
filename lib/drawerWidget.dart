import 'package:cek_tinkerhub/convert.dart';
import 'package:cek_tinkerhub/profile.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blueAccent
              ),
              child: Text('Drawer Head')),
          ListTile(
            title: const Text('Home'),
            onTap: (){
              print('Home tapped');
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfilePage()));
            },
          ),
          ListTile(
            title: const Text('Convert'),
            onTap: (){
              print('Convert Tapped');
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Convert()));
            },
          )
        ],
      ),
    );
  }
}
