import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          DrawerHeader(
              child: Center(
                  child: Text(
            'Class-XI Notes',
            style: Theme.of(context).textTheme.headlineMedium,
          ))),
          Divider(
            thickness: 1,
            color: Colors.pink.shade800,
            indent: 20,
            endIndent: 30,
          ),
          ListTile(
            title: Text(
              'Dark Mode',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            leading: Icon(
              Icons.dark_mode,
              color: Colors.pink.shade600,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Send Feedback',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            leading: Icon(
              Icons.send_sharp,
              color: Colors.pink.shade600,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Privacy Policy',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            leading: Icon(
              Icons.privacy_tip,
              color: Colors.pink.shade600,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Rate it',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            leading: Icon(
              Icons.star,
              color: Colors.pink.shade600,
            ),
            onTap: () {},
          ),
          
          ListTile(
            title: Text(
              'For More Notes',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            leading: Icon(
              FontAwesomeIcons.link,
              color: Colors.pink.shade600,
            ),
            onTap: () {},
          ),
          Divider(
            thickness: 1,
            color: Colors.pink.shade800,
            indent: 20,
            endIndent: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Other Apps'),
          ),
          ListTile(
            title: Text(
              'Class-9 Notes',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            leading: Icon(
              FontAwesomeIcons.googlePlay,
              color: Colors.pink.shade600,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Class-10 Notes',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            leading: Icon(
              FontAwesomeIcons.googlePlay,
              color: Colors.pink.shade600,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Class-12 Notes',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            leading: Icon(
              FontAwesomeIcons.googlePlay,
              color: Colors.pink.shade600,
            ),
            onTap: () {},
          ),
          const SizedBox(height: 25,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Nepal Enotes Pvt. Ltd.All right reserved'),
          ),
        ]),
      ),
    );
  }
}
