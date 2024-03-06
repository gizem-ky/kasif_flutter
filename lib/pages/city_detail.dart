import 'package:flutter/material.dart';

void main() {
  runApp(CityDetail());
}

class CityDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(        
        backgroundColor: Colors.brown.shade100,
        elevation: 0,
        title: Center(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'Şehir Rehberi\n',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Center(
                child: Text(
                  'Karabük Hakkında',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Text(
                'Yüzölçümü : 4.145 km²',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Nüfus : 255.242',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'İlçe Sayısı : 6',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Mahalle Sayısı : 80',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Telefon Kodu : 0370',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 25),
              child: Text(
                'Plaka Kodu : 78',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),


            SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 2.0),
                  width: 110,
                  child: Card(
                    elevation: 5.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),


            Padding(
              padding: const EdgeInsets.only(left: 16,bottom: 8, top: 16),
              child: Text(
                'Coğrafi Konumu',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ),

            Padding(
              padding: const EdgeInsets.only(left: 16,right: 8),
              child: Text(
                "Yüzölçümü 4.145 km² olan ve Karadeniz Bölgesinin Batı Karadeniz Bölümünde yer alan Karabük, kuzeyde Bartın, kuzeydoğu ve doğuda Kastamonu, güneydoğuda Çankırı, güneybatıda Bolu, batıda Zonguldak illeriyle komşudur. Ankara'ya 230 km., İstanbul'a 400 km. uzaklıktadır.  \n\nEn önemli akarsuyu Filyos Çay'ı olan Karabük'ün diğer önemli akarsuları ise Araç, Soğanlı ve Eskipazar Çaylarıdır. İl merkezinin rakımı 278 metre, merkez ilçenin yüzölçümü ise 704 km²dir. İlde cografi yapı engebeli olup büyük düzlükler görülmemektedir. Vadi tabanları da geniş olmamakla birlikte tarıma müsait araziler bulunmaktadır. Nüfusun büyük kismı vadi tabanlarına yakın alanlarda kümelenmiştir.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16,bottom: 8, top: 16),
              child: Text(
                'İlçeleri',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ),
            

            Padding(
              padding: const EdgeInsets.only(left: 16,bottom:  50),
              child: Text(
                "Karabük'te toplam 6 ilçe bulunmaktadır. Safranbolu şehrin en çok bilinen ilçesidir. Eflani, Eskipazar, Merkez, Ovacık, Yenice'de şehrin diğer ilçelerini oluşturmaktadır.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
