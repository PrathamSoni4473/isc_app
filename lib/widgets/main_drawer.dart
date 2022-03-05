import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 213, 236, 255),
              ),
              child: Image.asset('assets/images/iSchoolConnect-logo.png')),
          ListTile(
            title: Text(
              'All University',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text(
              'Guide',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text(
              'About Us',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text(
              'Contact U',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text(
              'Success Story',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
