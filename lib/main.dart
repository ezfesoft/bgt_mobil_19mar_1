import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: basliklar.length,
        itemBuilder: (context, sayac) {
          return Container(
            height: 75,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
            padding: EdgeInsets.only(bottom: 3),
            child: Container(
              height: 70,
              color: Colors.white,
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 5,top: 5,left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: renkler[sayac%renkler.length],
                      border: Border.all(color: Colors.grey)
                    ),
                    child: Icon(Icons.person,size: 45,color: Colors.white,),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(
                    basliklar[sayac],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                  
                  Text(
                    detaylar[sayac],
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 15
                    ),
                  ),
                  ],
                  ),
                  Spacer(),
                  Icon(Icons.attachment,color: Colors.grey,),
                  SizedBox(width: 20,),
                  Text("19 Mar"),
                  SizedBox(width: 40,)
                ],
              ),
            ),
          );
        },
      )

    );
  }
  List <String> ogrenciler=["Ali","Ayşe","Mehmet","Ali","Ayşe","Mehmet","Ali","Ayşe","Mehmet","Ali","Ayşe","Mehmet","Ali","Ayşe","Mehmet","Ali","Ayşe","Mehmet","Ali","Ayşe","Mehmet","Ali","Ayşe","Mehmet","Ali","Ayşe","Mehmet","Ali","Ayşe","Mehmet"];

  List<Color> renkler=[
    Colors.redAccent,
    Colors.red,
    Colors.orange,
    Colors.orangeAccent,
    Colors.amber,
    Colors.amberAccent
    
  ];

List<String> basliklar = [
  "Teknoloji ve Gelecek",
  "Yapay Zeka Dünyasında İnsanlık",
  "Sosyal Medyanın Gücü",
  "İklim Değişikliği ve Etkileri",
  "Sağlıklı Yaşamın Sırları",
  "Eğitimde Dijitalleşme",
  "Girişimcilik ve Başarı",
  "Kariyer Planlaması",
  "Liderlik Becerileri",
  "Dijital Pazarlama Stratejileri",
  "Sosyal Sorumluluk Projeleri",
  "Çevre Dostu Teknolojiler",
  "Yapay Zeka ve Eğitim",
  "Kişisel Gelişim Yolları",
  "Zaman Yönetimi Teknikleri",
  "Finansal Okuryazarlık",
  "Geleceğin İş Dünyası",
  "Sağlıklı Beslenme İpuçları",
  "Kişisel Markalaşma",
  "Dijital Sanat ve Yaratıcılık",
  "Teknolojinin İnsan Psikolojisine Etkisi",
  "Yaratıcı Düşünme Teknikleri",
  "Sosyal Medya Yönetimi",
  "Veri Analitiği ve Karar Verme",
  "Sağlık Teknolojileri",
  "Yeni Nesil Eğitim Modelleri",
  "İnovasyon ve Yaratıcılık",
  "E-ticaretin Geleceği",
  "Sürdürülebilir Moda",
  "Günümüz İş Dünyasında Kadın",
  "Yeni Teknolojilerin Etkisi",
  "Biyoteknoloji ve Sağlık",
  "Sosyal İnovasyon",
  "Beyin Fırtınası Yöntemleri",
  "Kriz Yönetimi",
  "Kişisel Finans Yönetimi",
  "Yapay Zeka ve İnsan Hakları",
  "Sanal Gerçeklik ve Eğitim",
  "Geri Dönüşüm ve Sürdürülebilirlik",
  "Küresel Ekonomik Trendler",
  "Yabancı Dil Öğrenmenin Yolları",
  "Çevre Dostu Ulaşım Çözümleri",
  "Eğitimde Oyunlaştırma",
  "Uzaktan Çalışma ve Verimlilik",
  "Motivasyon Teknikleri",
  "Yeni Nesil Çalışma Alanları",
  "Sosyal Etki ve Değişim",
  "İleri Teknoloji Ürünleri",
  "Genetik ve İnsan Sağlığı",
  "Yapay Zeka ve Etik",
  "Dijital İletişim ve İletişim Stratejileri"
];

List<String> detaylar = [
  "Teknolojinin gelecekteki etkilerini keşfetmek.",
  "Yapay zekanın toplumsal hayatımıza olan etkileri.",
  "Sosyal medya kullanımının psikolojik etkileri.",
  "İklim değişikliğinin gezegen üzerindeki yıkıcı etkileri.",
  "Sağlıklı bir yaşam sürmek için uygulanabilir öneriler.",
  "Eğitimde dijitalleşmenin önemi ve yararları.",
  "Girişimciliğin gerektirdiği yetenekler ve stratejiler.",
  "Başarılı bir kariyerin anahtarları.",
  "Liderlik vasıflarını geliştirme yolları.",
  "Dijital pazarlamanın temel prensipleri.",
  "Sosyal sorumluluk projelerinin topluma katkıları.",
  "Çevre dostu teknolojilerin geleceği.",
  "Yapay zekanın eğitim alanındaki uygulamaları.",
  "Kişisel gelişimin önemi ve yöntemleri.",
  "Zaman yönetimi ile daha verimli bir hayat.",
  "Finansal okuryazarlık ve geleceğe yatırım yapma.",
  "Geleceğin iş dünyasında hangi beceriler ön planda olacak.",
  "Sağlıklı beslenme alışkanlıkları oluşturmanın ipuçları.",
  "Kişisel markalaşma stratejileri.",
  "Dijital sanatın yükselen trendleri.",
  "Teknolojinin psikolojimize etkileri ve bunlarla başa çıkma yolları.",
  "Yaratıcı düşünme için pratik yöntemler.",
  "Sosyal medya yönetimi ve içerik stratejileri.",
  "Veri analitiği kullanarak daha iyi kararlar almak.",
  "Sağlık teknolojilerinin ilerleyen rolü.",
  "Yeni nesil eğitim modelleri ve bunların avantajları.",
  "İnovasyonun iş dünyasındaki rolü.",
  "E-ticaretin geleceği ve nasıl büyütülür.",
  "Sürdürülebilir modanın popülaritesi.",
  "Kadınların iş dünyasında giderek artan etkisi.",
  "Yeni teknolojilerin yaşamımıza kattığı yenilikler.",
  "Biyoteknolojinin sağlık alanındaki katkıları.",
  "Sosyal inovasyon projelerinin topluma sağladığı faydalar.",
  "Beyin fırtınası yaparak yaratıcı fikirler geliştirmek.",
  "Kriz anlarında etkin bir yönetim stratejisi geliştirme.",
  "Kişisel finansınızı nasıl yönetirsiniz.",
  "Yapay zekanın insan hakları ile ilişkisi.",
  "Sanal gerçeklik teknolojisinin eğitimde kullanımı.",
  "Geri dönüşümün çevreye katkıları ve önemi.",
  "Küresel ekonomik değişimlerin nasıl şekillendiği.",
  "Yeni bir dil öğrenmenin yöntemleri.",
  "Çevre dostu ulaşım çözümleri ve yeni trendler.",
  "Oyunlaştırma yöntemlerinin eğitimde kullanımı.",
  "Uzaktan çalışma ile verimlilik sağlama yolları.",
  "Kişisel motivasyon tekniklerini keşfetmek.",
  "Yeni nesil ofislerde çalışanların alışkanlıkları.",
  "Sosyal değişim yaratma stratejileri.",
  "Teknolojik yeniliklerin hayatımıza etkileri.",
  "Genetik alanındaki son gelişmelerin sağlık üzerindeki etkileri.",
  "Yapay zekanın etik boyutları.",
  "Dijital iletişimde etkili stratejiler oluşturma."
];










}

//                  t.me/bgt_mobil











