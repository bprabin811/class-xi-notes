import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class NepaliPage extends StatefulWidget {
  final VoidCallback onToggleDarkMode;
  const NepaliPage({super.key,required this.onToggleDarkMode});

  @override
  State<NepaliPage> createState() => _NepaliPageState();
}

class _NepaliPageState extends State<NepaliPage> {
  bool isDarkMode = false;
  List nepaliChapters = [
    '1. आमाको सपना Aamako Sapana ',
    '2. विरहिणी दमयन्ती Birahini Damayanti',
    '3. घनघस्याको उकालो काट्ता Ghanaghasya ko ukalo katda',
    '4. व्यावसायिक पत्र Byabasayik Patra',
    '5. एक चिहान Ek Chihaan',
    '6. स्टिफन विलियम हकिङ Stephem William Hawaking',
    '7. हामीलाई बोलाउँछन् हिमचुली Hamilai bolauchan Himchuli',
    '8. मातृत्व Matrittwo',
    '9. गोर्खे Gorkhe',
    '10. नेपाली पहिचान Nepali Pahicha',
    '11. सहकारी Sahakaari',
    '12. जीवन मार्ग Jiban Marga'
  ];
  List chapterContent = [
    'assets/databases/ch1.pdf',
    'assets/databases/ch1.pdf',
    'assets/databases/ch1.pdf',
    'assets/databases/ch1.pdf',
    'assets/databases/ch1.pdf',
    'assets/databases/ch1.pdf',
    'assets/databases/ch1.pdf',
    'assets/databases/ch1.pdf',
    'assets/databases/ch1.pdf',
    'assets/databases/ch1.pdf',
    'assets/databases/ch1.pdf',
    'assets/databases/ch1.pdf',
  ];

  void _showChapter(String chapterName, String chapterContent) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text(chapterName),
              elevation: 0,
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SfPdfViewer.asset(
                chapterContent,
                interactionMode: PdfInteractionMode.pan,
              ),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nepali-XII'),
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
          itemCount: nepaliChapters.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  _showChapter(nepaliChapters[index],chapterContent[index]);
                },
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      nepaliChapters[index],
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
