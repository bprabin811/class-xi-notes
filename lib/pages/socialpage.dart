import 'package:flutter/material.dart';

class SocialPage extends StatefulWidget {
  const SocialPage({super.key});

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  List socialUnits = [
    'एकाइ १ सामाजिक तथा जीवनोपयोगी शिक्षाको अवधारणा',
    'एकाइ २ जीवनोपयोगी सिपका रूपमा डिजिटल सिपहरू तथा सामान्य अनुसन्धान सिपहरू',
    'एकाइ ३ जीवनोपयोगी सिप',
    'एकाइ ४ समाजको विकास र दर्शन',
    'एकाइ ५ भूगोल र सामाजिक जीवन',
    'एकाइ ६ नेपालको इतिहास',
    'एकाइ ७ सामजिक पहिचान र विविधता',
    'एकाइ ८ संविधान र नागरिक सचेतना',
    'एकाइ ९ सहरीकरण र बसाइ“सराइ',
    'एकाइ १० अर्थतन्त्र र विकास',
    'एकाइ ११ शिक्षा र सामाजिक विकास'
  ];
  List socialChapters = [
    [
      'पाठ : १ सामाजिक अध्ययन तथा जीवनोपयोगी शिक्षाको अन्तरसम्बन्ध',
      'पाठ: २ जीवनोपयोगी शिक्षा, जीवनोपयोगी सिप र स्वस्थ जीवनशैलीबिचको अन्तरसम्बन्ध'
    ],
    [
      'पाठ: १ अनुसन्धान परिचय',
      'पाठ: २ सामाजिक अध्ययनमा सहसम्बन्ध तथा कार्यकारण सम्बन्धको अवधारणा',
      'पाठ: ३ अध्ययन प्रस्तावनाको संरचना',
      'पाठ: ४ लेखनकार्यमा अरूको लेखरचनाको प्रयोग गर्दा ध्यान दिनुपर्ने नैतिक पक्ष',
      'पाठ: ५ सामाजिक अध्ययनका लागि समस्या निर्माण र अध्ययन विधि चयन',
      'पाठ: ६ सामाजिक तथ्याब्क र सूचना सब्कलनका विधि र साधनहरू',
      'पाठ: ७ तथ्याब्क तथा सूचनाको विश्लेषण र प्रस्तुतीकरण',
      'पाठ: ८ तथ्याब्क प्रशोधन र विश्लेषणमा माइक्रोसफ्ट एक्सेलको प्रयोग',
      'पाठ: ९ शाब्दिक जानकारीलाई प्रस्तुत गर्ने तरिका'
    ],
    [
      'पाठ : १ जीवनोपयोगी सिपको ऐतिहासिक पृष्ठभूमि, वर्गीकरण र अभ्यास',
      'पाठ: २ समालोचनात्मक चिन्तन',
      'पाठ: ३ सिर्जनात्मक चिन्तन',
      'पाठ: ४ समानुभूति',
      'पाठ: ५ आत्मबोध',
      'पाठ: ६ संवेग व्यवस्थापन'
    ],
    [
      'पाठ: १ वर्तमान विश्वका सामाजिक विविधता र विशेषता',
      'पाठ: २ सामाजिक सम्बन्धहरूको विकास र सामाजिक अन्तर निर्भरता',
      'पाठ: ३ जीवन दर्शन, सामाजिक मूल्य मान्यताहरू र सामाजिक व्यवहार',
      'पाठ: ४ दैनिक जीवनमा दर्शनको उपयोगिता',
      'पाठ: ५ समुदायमा आएका परिवर्तन र सामाजिक रूपान्तरण'
    ],
    [
      'पाठ: १ नेपालका प्रशासनिक प्रदेश',
      'पाठ: २ प्रदेशहरूको जनसाँख्यिक अवस्था र विशेषता',
      'पाठ: ३ नेपालका प्रदेशका सामाजिक सांस्कृतिक अवस्था र विशेषता',
      'पाठ: ४ नेपालका प्रदेशको आर्थिक अवस्था र विशेषता',
      'पाठ: ५ अन्तरप्रादेशिक सम्बन्धका आयामहरू',
      'पाठ: ६ नेपालमा विपत्',
      'पाठ: ७ विपत्का कारण र प्रभाव',
      'पाठ: ८ नेपालमा विपत् व्यवस्थापन संयन्त्र र योजना निर्माण',
      'पाठ: ९ भूगोल र सामाजिक जीवनमा सूचना प्रविधि',
      'पाठ: १० सामाजिक नक्साब्कमा भूसूचना प्रणालीको प्रयोग'
    ],
    [
      'पाठ : १  नेपालको प्राचीन इतिहास',
      'पाठ :२ लिच्छवि काल',
      'पाठ :३ मध्यकालीन राजनीतिक अवस्था',
      'पाठ :४ मध्यकालीन आर्थिक, सामजिक तथा सांस्कृतिक अवस्था',
      'पाठ :५ मध्यकालमा ससाना राज्यको उदय र अवसान',
      'पाठ :६ आधुनिक काल',
      'पाठ :७ एकीकरणपछिको राज्य सत्ता',
      'पाठ :८ आधुनिक कालकोअर्थतन्त्र, कानुन, संस्कृति र कलाकौशल'
    ],
    [
      'पाठ :१ वर्ग र समाजिक रूपान्तरण',
      'पाठ :२ लैब्गिक सवाल',
      'पाठ :३ लैब्गिक समावेशिता',
      'पाठ :४ अपाब्गता र समावेशीकरण',
      'पाठ :५ धार्मिक तथा क्षेत्रीय पहिचान',
      'पाठ :६ समतामूलक समाज'
    ],
    [
      'पाठ: १  सरकारको गठन प्रक्रिया',
      'पाठ: २ सरकारका काम कर्तव्य र अधिकार',
      'पाठ: ३ नागरिक अधिकार र कर्तव्य',
      'पाठ: ४ किशोरकिशोरीको अधिकार र कर्तव्य',
      'पाठ: ५ मुलुकी संहिता',
      'पाठ: ६ सूचनाको हक',
      'पाठ: ७ सदाचार र सामाजिक जवाफदेही'
    ],
    [
      'पाठ :१ सहरीकरणको अवधारणा',
      'पाठ :२ नेपालमा सहरीकरण',
      'पाठ :३ गाउँ सहर सम्बन्ध'
          'पाठ :४ नेपालमा सहरीकरणका अवसर र चुनौती',
      'पाठ :६ बसाइँसराइको प्रवृत्ति',
      'पाठ :७ सुरक्षित एवम् मर्यादित आप्रवासन',
      'पाठ :८ बसाइँसराइको प्रभाव'
    ],
    [
      'पाठ : १ नेपालको अर्थतन्त्र र विकास',
      'पाठ :२ नेपालको विदेश नीति र नेपाल भारत तथा नेपाल चीन सम्बन्ध',
      'पाठ :३ नेपालको अन्तर्राष्ट्रिय सम्बन्ध',
      'पाठ :४ नेपालको वैदेशिक व्यापार',
      'पाठ :५ नेपालको वैदेशिक रोजगार नीति',
      'पाठ :६ आर्थिक वृद्धि, मानव विकास तथा दिगो विकास अवधारणा',
      'पाठ :७ नेपालमा गरिबी चक्र र सम्बोधनका उपायहरू'
    ],
    [
      'पाठ :१ शिक्षा र मानव संसाधन विकास',
      'पाठ :२ शिक्षामा पहु“च र समावेशिता',
      'पाठ :३ शिक्षाले सामाजिक तथा सांस्कृतिक विकासमा ल्याउने परिवर्तन र प्रभाव',
      'पाठ :४ शिक्षामा समुदायको सहभागिता',
      'पाठ :५ शिक्षा र रोजगार'
    ]
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Social-XII'),
        elevation: 0,
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: socialChapters.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyChapters(
                              countList: socialChapters[index].length,
                              chapterName: socialChapters[index],
                              subName: 'Social-XII',
                            )),
                  );
                },
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      socialUnits[index],
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SocialContent(chapterName: widget.chapterName[index],
                        chapterContent: widget.chapterName[index],)),
                  );
                },
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

class SocialContent extends StatelessWidget {
  final String chapterName;
  final String chapterContent;
  const SocialContent({super.key,required this.chapterName,required this.chapterContent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chapterName),
        elevation: 0,
      ),
      body: Center(
        child: Text(chapterContent),
      ),
    );
  }
}