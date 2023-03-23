import 'package:flutter/material.dart';

class EnglishPage extends StatefulWidget {
  final VoidCallback onToggleDarkMode;
  const EnglishPage({super.key,required this.onToggleDarkMode});

  @override
  State<EnglishPage> createState() => _EnglishPageState();
}

class _EnglishPageState extends State<EnglishPage> {
  bool isDarkMode = false;
  List sectionEnglish = [
    'Section One: Language Development',
    'Section Two: Literature',
  ];
  List<List<String>> englishUnits = [
    [
      '1. Critical Thinking',
      '2. Family',
      '3. Sports',
      '4. Technology',
      '5. Education',
      '6. Money and Economy',
      '7. Humour',
      '8. Human Culture',
      '9. Ecology and Environment',
      '10. Career Opportunities',
      '11. Hobbies',
      '12. Animal World',
      '13. History',
      '14. Human Rights',
      '15. Leisure and Entertainment',
      '16. Fantasy',
      '17. War and Peace',
      '18. Music and Creation',
      '19. Migration and Diaspora',
      '20. Power and Politics'
    ],
    [
      'Unit One: Short Stories',
      '1. Neighbours',
      '2. A Respectable Woman',
      '3. A Devoted Son',
      '4. The Treasure in the Forest',
      '5. My Old Home',
      '6. The Half-closed Eyes of the Buddha and the Slowly Sinking Sun',
      '7. A Very Old Man with Enormous Wings',
      'Unit Two: Poems',
      '1. A Day',
      '2. Every Morning I Wake',
      '3. I Was My Own Route',
      '4. The Awakening Age',
      '5. Soft Storm',
      'Unit Three: Essays',
      '1. On Libraries',
      '2. Marriage as a Social Institution',
      '3. Knowledge and Wisdom',
      '4. Humility',
      '5. Human Rights and the Age of Inequality',
      'Unit Four: One-act Plays',
      '1. A Matter for Husband',
      '2. Facing Death',
      '3. The Bull'
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English-XII'),
        elevation: 0,
        actions: [
          Switch(
              activeColor: Colors.purple,
              value: Theme.of(context).brightness == Brightness.dark,
              onChanged: (value) {
                widget.onToggleDarkMode();
                
              }
            ),
        ],
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: sectionEnglish.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SectionPage(
                              countList: englishUnits[index].length,
                              chapterName: englishUnits[index],
                              subName: 'English-XII',
                              indexColor: index == 1,
                              unitsList: englishUnits,
                            )),
                  );
                },
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      sectionEnglish[index],
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

class SectionPage extends StatefulWidget {
  final int countList;
  final String subName;
  final List<String> chapterName;
  final bool indexColor;
  final List<List<String>> unitsList;
  
  SectionPage(
      {super.key,
      required this.countList,
      required this.chapterName,
      required this.subName,
      required this.indexColor,
      required this.unitsList});

  @override
  State<SectionPage> createState() => _SectionPageState();
}

class _SectionPageState extends State<SectionPage> {
  List<Color> cardColors = List.generate(25, (_) => Colors.white);

  @override
  Widget build(BuildContext context) {
    if (widget.indexColor) {
      cardColors = List.generate(widget.countList, (index) {
        if (index == 0) {
          return Colors.purple[400]!;
        } else if (index == 8) {
          return Colors.purple[400]!;
        } else if (index == 14) {
          return Colors.purple[400]!;
        } else if (index == 20) {
          return Colors.purple[400]!;
        }
        {
          return Theme.of(context).colorScheme.surface;
        }
      });
    }

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
                onTap: () {
                  if (widget.indexColor &&
                      (index == 0 ||
                          index == 8 ||
                          index == 14 ||
                          index == 20)) {
                    return; // do not navigate to NotePage if the index is purple
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotePage(
                              chapterName: widget.chapterName[index],
                              subName: widget.subName,
                              unitsList: widget.unitsList,
                              unitIndex: index,
                            )),
                  );
                },
                child: Card(
                  color: widget.indexColor ? cardColors[index] : null,
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

class NotePage extends StatefulWidget {
  final String subName;
  final String chapterName;
  final List<List<String>> unitsList;
  final int unitIndex;

  NotePage(
      {super.key,
      required this.chapterName,
      required this.subName,
      required this.unitsList,
      required this.unitIndex});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.chapterName),
        elevation: 0,
      ),
      body: Center(
        child: Text(
          'Notes for ${widget.chapterName} of ${widget.subName}',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
