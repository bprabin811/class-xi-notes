import 'package:flutter/material.dart';
import 'package:notesxi/pages/englishpage.dart';
import 'package:notesxi/pages/nepalipage.dart';
import 'package:notesxi/pages/socialpage.dart';
import 'package:notesxi/screens/drawer.dart';
import 'package:gap/gap.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Class-XI Notes Offline'),
        elevation: 0,
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              const Gap(15),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  'Tap here to join our telegram discussion group to ask your questions or answer others all over Nepal.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.pink.shade600, fontSize: 12),
                )),
              ),
              const Gap(40),
              const Image(
                image: AssetImage('assets/images/logo.jpeg'),
                width: 100,
              ),
              SizedBox(
                height: 400,
                child: GridView.count(
                  physics: const BouncingScrollPhysics(),
                  crossAxisCount: 2,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EnglishPage()),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.book,
                            size: 40,
                            color: Colors.pink.shade600,
                          ),
                          const Gap(10),
                          Text(
                            'English(XI)',
                            style: Theme.of(context).textTheme.headlineSmall,
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SocialPage()),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.users,
                            size: 40,
                            color: Colors.pink.shade600,
                          ),
                          const Gap(10),
                          Text(
                            'Social(XI)',
                            style: Theme.of(context).textTheme.headlineSmall,
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const NepaliPage()),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.n,
                            size: 40,
                            color: Colors.pink.shade600,
                          ),
                          const Gap(10),
                          Text(
                            'Nepali(XI)',
                            style: Theme.of(context).textTheme.headlineSmall,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.pink.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    'More',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.pink.shade600, fontSize: 16),
                  )),
                ),
              ),
              const Gap(20)
            ],
          ),
        ),
      ),
    );
  }
}
