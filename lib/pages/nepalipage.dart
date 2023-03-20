import 'package:flutter/material.dart';

class NepaliPage extends StatefulWidget {
  const NepaliPage({super.key});

  @override
  State<NepaliPage> createState() => _NepaliPageState();
}

class _NepaliPageState extends State<NepaliPage> {
  List nepaliChapters = [
    'Ch-1',
    'Ch-2',
    'Ch-3',
    'Ch-4',
    'Ch-5',
    'Ch-6',
    'Ch-7',
    'Ch-8',
    'Ch-9',
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nepali-XI'),
        elevation: 0,
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: nepaliChapters.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ListTile(
                tileColor: Colors.grey.shade100,
                title: Text(
                  nepaliChapters[index],
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            );
          }),
    );
  }
}
