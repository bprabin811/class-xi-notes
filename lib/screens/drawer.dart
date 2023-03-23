import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Could not launch $url';
  }
}

class MyDrawer extends StatefulWidget {
  final VoidCallback onToggleDarkMode;
  const MyDrawer({super.key, required this.onToggleDarkMode});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool isDarkMode = false;
  Future<void>? _launched;
  @override
  Widget build(BuildContext context) {
    final Uri toTelegram =
        Uri(scheme: 'https', host: 't.me', path: 'nepalenotes12science');
    final Uri toGForm =
        Uri(scheme: 'https', host: 'forms.gle', path: 'fzvC2pTidC4aNUb59');

    final Uri privacyPolicy =
        Uri(scheme: 'https', host: 'www.nepalenotes.com', path: 'p/privacy-policy.html');

    return Drawer(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: const Image(
              image: AssetImage('assets/images/logo.jpeg'),
              width: 50,
                ),
              ),
                  Text(
            'Class-XII Notes',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
                ],
              )),
          Divider(
            thickness: 1,
            indent: 20,
            endIndent: 30,
          ),
          ListTile(
            title: Text(
              'Mode',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            trailing: Switch(
              activeColor: Colors.purple,
              value: Theme.of(context).brightness == Brightness.dark,
              onChanged: (value) {
                widget.onToggleDarkMode();
              },
            ),
          ),
          ListTile(
            title: Text(
              'Send Feedback',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            leading: Icon(
              Icons.send_sharp,
            ),
            onTap: () => setState(() {
              _launched = _launchInBrowser(toGForm);
            }),
          ),
          ListTile(
            title: Text(
              'Privacy Policy',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            leading: Icon(
              Icons.privacy_tip,
            ),
            onTap: () => setState(() {
              _launched = _launchInBrowser(privacyPolicy);
            }),
          ),
          ListTile(
            title: Text(
              'Past Questions',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            leading: Icon(
              FontAwesomeIcons.link,
            ),
            onTap: () => setState(() {
              _launched = _launchInBrowser(toTelegram);
            }),
          ),
          Divider(
            thickness: 1,
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
            ),
            onTap: () {},
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Nepal Enotes Pvt. Ltd.All right reserved'),
          ),
        ]),
      ),
    );
  }
}
