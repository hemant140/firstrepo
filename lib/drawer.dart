// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Hemant Singh'),
            accountEmail: Text('Hemo.hm576@gamil.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/mine.jpeg'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            // ignore: prefer_const_constructors
            title: Text('Account'),
            subtitle: Text('Personal'),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.mail),
            // ignore: prefer_const_constructors
            title: Text('Email'),
            subtitle: Text('hemo.hm140@gamil.com'),
            trailing: Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
