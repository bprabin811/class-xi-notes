import 'package:flutter/material.dart';

class MyChapters extends StatefulWidget {
  final int countList;
  final String subName;
  final List chapterName;
  const MyChapters({super.key,required this.countList,required this.chapterName,required this.subName});

  @override
  State<MyChapters> createState() => _MyChaptersState();
}

class _MyChaptersState extends State<MyChapters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.subName),
        elevation: 0,
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: widget.countList,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      widget.chapterName[index],
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
