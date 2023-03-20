import 'package:flutter/material.dart';

class SocialPage extends StatefulWidget {
  const SocialPage({super.key});

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  List socialChapters = [
    'Ch-1',
    'Ch-2',
    'Ch-3',
    'Ch-4',
    'Ch-5',
    'Ch-6',
    'Ch-7',
    'Ch-8',
    'Ch-9',
    'Ch-10'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social-XI'),
        elevation: 0,
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: socialChapters.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ListTile(
                tileColor: Colors.grey.shade100,
                title: Text(
                  socialChapters[index],
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            );
          }),
    );
  }
}
