import 'package:flutter/material.dart';
import '../screens/all_uni.dart';
import '../screens/guide.dart';
import '../screens/about_us.dart';
import '../screens/contact_us.dart';

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
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AllUniversities()),
              );
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const guide()),
              );
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const aboutus()),
                );
              }),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text(
              'Contact Us',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContactUs()),
              );
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
