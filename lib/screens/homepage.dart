import 'package:flutter/material.dart';
import 'package:notesxi/pages/englishpage.dart';
import 'package:notesxi/pages/nepalipage.dart';
import 'package:notesxi/pages/socialpage.dart';
import 'package:notesxi/screens/drawer.dart';
import 'package:gap/gap.dart';
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

class MyHomePage extends StatefulWidget {
  final VoidCallback onToggleDarkMode;
  const MyHomePage({super.key, required this.onToggleDarkMode});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void>? _launched;
  @override
  Widget build(BuildContext context) {
    final Uri toTelegram =
        Uri(scheme: 'https', host: 't.me', path: 'nepalenotes');
    final Uri moreNote = Uri(
        scheme: 'https',
        host: 'www.nepalenotes.com',
        path: '2021/12/class-12-notes.html?m=1');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Class-XII Notes '),
        elevation: 0,
      ),
      drawer: MyDrawer(
        onToggleDarkMode: widget.onToggleDarkMode,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              const Gap(25),
              GestureDetector(
                onTap: () => setState(() {
                  _launched = _launchInBrowser(toTelegram);
                }),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.purple.shade200,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Text(
                    'Tap here to join our telegram discussion group to ask your questions or answer others all over Nepal.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  )),
                ),
              ),
              const Gap(40),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: const Image(
                  image: AssetImage('assets/images/logo.jpeg'),
                  width: 100,
                ),
              ),
              const Gap(20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5,color: Colors.purple),
                  borderRadius: BorderRadius.circular(10)
                ),
                height: 350,
                child: GridView.count(
                  physics: const BouncingScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  EnglishPage(
                                onToggleDarkMode: widget.onToggleDarkMode,
                              )),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.purple.shade300,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              FontAwesomeIcons.book,
                              size: 40,
                            ),
                          ),
                          const Gap(10),
                          Text(
                            'English',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SocialPage(onToggleDarkMode: widget.onToggleDarkMode,)),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.purple.shade300,
                            ),
                            child: const Icon(
                              FontAwesomeIcons.users,
                              size: 40,
                            ),
                          ),
                          const Gap(10),
                          Text(
                            'Social',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NepaliPage(onToggleDarkMode: widget.onToggleDarkMode,)),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.purple.shade300,
                            ),
                            child: const Icon(
                              FontAwesomeIcons.n,
                              size: 40,
                            ),
                          ),
                          const Gap(10),
                          Text(
                            'Nepali',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
               const Gap(40),
              GestureDetector(
                onTap: () => setState(() {
                  _launched = _launchInBrowser(moreNote);
                }),
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.purple.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    'More Notes',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(color: Colors.purple.shade600, fontSize: 16),
                  )),
                ),
              ),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
