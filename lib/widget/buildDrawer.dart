import 'package:flutter/material.dart';
class AppDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Mounes Al-Hassan'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Line Kw Shop'),
            onTap: () {
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('History'),
            onTap: () {
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Admin Stage'),
            onTap: () {
            },
          ), Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () async {

            },
          ),Divider(),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
            onTap: ()async {
            },
          ),
        ],
      ),
    );
  }

}