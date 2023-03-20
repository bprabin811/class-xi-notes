import 'package:flutter/material.dart';

class EnglishPage extends StatefulWidget {
  const EnglishPage({super.key});

  @override
  State<EnglishPage> createState() => _EnglishPageState();
}

class _EnglishPageState extends State<EnglishPage> {
  List englishChapters = [
    'Ch-1',
    'Ch-2',
    'Ch-3',
    'Ch-4',
    'Ch-5',
    'Ch-6',
    'Ch-7',
    'Ch-8'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English-XI'),
        elevation: 0,
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: englishChapters.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ListTile(
                tileColor: Colors.grey.shade100,
                title: Text(
                  englishChapters[index],
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            );
          }),
    );
  }
}
