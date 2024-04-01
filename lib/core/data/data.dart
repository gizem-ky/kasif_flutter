// ignore_for_file: non_constant_identifier_names


//activities

import 'package:kasif/core/model/activities_model.dart';
import 'package:kasif/core/model/hotels_model.dart';
import 'package:kasif/core/model/place_model.dart';
import 'package:kasif/core/model/restaurant_model.dart';

List<ActivityModel> activity_items = [
  ActivityModel(
      name: "Suç ve Ceza",
      trip: "Tiyatro",
      price: "250",
      image_url: "assets/images/suc_ve_ceza.jpg",
      timing: "21 Nisan 2024",
      belogto: 'activities',
      location: 'Leyla Dizdar Kültür Merkezi', 
      detail: 'Dostoyevski’nin ünlü eserinden uyarlanarak sahnelenen “Suç ve Ceza” 30 kişilik Dev kadrosuyla sahneleniyor! “İnsanın ruhunu yücelten bir acı, ucuz bir mutluluktan daha değerlidir. Dostoyevski İnsan nasıl suçlu sayılır? Dostoyevski\'de adalet biterse suç mu başlar? Raskolnikov\'a gerçek suç yoktur dedirtirken kendisi de buna inanmış mıdır? Fakir bir öğrenci Raskolnikov\'a göre toplumun yararına olacaksa yasaların boyunduruğundan sıyrılma hakkı, kanunların çiğnenebileceğine inanma düşüncesi cinayet işlemeyi unormalleştirir. Bu inanışla, Raskolnikov’un topluma zarar verdiğini düşündüğü tefeci kadını öldürmesi ile “Suç” ve “Ceza” kavramları derinlemesine tartışılmaya başlanır. Raskolnikov ve yaşamları en az Raskolnikov kadar ikilemeler, iç çatışmalar üzerine kurulmuş diğer karakterler aracılığıyla toplumsal değerlerirdelenir. “Ranskolnikov Sendromu” olarak tıp biliminde yer alan kavram da tam buradan gelir. Kişinin gücünün yetmeyeceğini bildiği halde kendi adaletini oluşturma çabası. Bir insan olağanüstü bir düşünceye ve bilgeliğe sahip ise toplumun adaleti için suç işleme hakkına sahip midir? Dostoyevski size bunu Raskolnikov\'un çektiği acılar üzerinden sorgulatıyor. Gerçek suç var mı? Varsa cezasını kim veriyor? Dostoyevski’nin o muhteşem eserinden uyarlanan “Suç ve Ceza” 30 kişilik Dev kadrosuyla Türkiye Turnesinde…', 
      url: 'https://biletinial.com/tr-tr/tiyatro/suc-ve-ceza',
      saat: '19:30', 
      latitude: 41.25939587996393, longitude: 32.67461627075189), //41.25939587996393, 32.67461627075189
  ActivityModel(
      name: "Sergen Deveci - Ketenpere / Olan",
      trip: "Stand Up",
      price: "350",
      image_url: "assets/images/sergen_deveci.png",
      timing: "26 Nisan 2024",
      belogto: 'activities', 
      location: 'Leyla Dizdar Kültür Merkezi',
      detail: 'Instagram’da çektiği videolarla milyonların beğenisini ve sevgisini kazanan Sergen Deveci, tek kişilik stand up gösterisi ile sizlerle.',
      url: 'https://www.bubilet.com.tr/karabuk/etkinlik/sergen-deveci-ketenpere-olan',
      saat: '20:30',
      latitude: 41.25939587996393, longitude: 32.67461627075189),
    ActivityModel(
      name: "Korkuyu Beklerken",
      trip: "Tiyatro",
      price: "300",
      image_url: "assets/images/korkuyu_beklerken.jpg",
      timing: "27 Nisan 2024",
      belogto: 'activities',
      location: 'Karabük 100.yıl Kültür Merkezi',
      detail: 'Korkularından başka silahı olmayan bir adamın, silahları parçalanana kadar mücadele ettiği bir kavga. Bu kavgada anlatılanlar için, aslında bir başka Tutunamayan\'ın hikayesidir diyebiliriz. Zaman zaman bir rehber olarak kullanmaya çalıştığımız Tutunamayanlar\'da, Oğuz Atay bu türün (disconnectus erectus) tanımı için şöyle demiş; "Erkekleri, yalnız bırakıldıkları zaman acıklı sesler çıkarırlar. Dişilerini de aynı sesle çağırırlar. Genellikle terkedilmiş yuvalarda yaşarlar. Belirli bir aile düzenleri yoktur.Doğumdan sonra ana, baba ve yavrular ayrı yerlere giderler. Toplu olarak yaşamayı bilmezler ve dış tehlikelere karşı birleştikleri görülmemiştir. Belirli bir beslenme düzenleri yoktur. Başka hayvanlarla birlikte yaşarken onların getirdikleri yiyeceklerle geçinirler. Kendi başlarına kaldıkları zaman genellikle yemek yemeyi unuturlar. Bütün huyları taklit esasına dayandığı için, başka hayvanların yemek yediklerini görmezlerse, acıktıklarını anlamazlar. İçgüdüleri tam gelişmemiştir. Kendilerini korumayı bilmezler. Fakat -gene taklitçikleri nedeniyle- başka hayvanların dövüşmesine özenerek kavgaya girdikleri olur. Şimdiye kadar hiçbir tutunamayanın bir kavgada başka bir hayvanı yendiği görülmemiştir."',
      url: 'https://biletinial.com/tr-tr/tiyatro/korkuyu-beklerken-entropi',
      saat: '19:00',
      latitude: 41.225233101741125, longitude: 32.66816876519022), //41.225233101741125, 32.66816876519022
    ActivityModel(
      name: "İlk Buluşma",
      trip: "Tiyatro",
      price: "200",
      image_url: "assets/images/ilk_bulusma.jpeg",
      timing: "04 Mayıs 2024",
      belogto: 'activities',
      location: 'Karabük 100.yıl Kültür Merkezi',
      detail: 'İki yakın arkadaş Kerem ve Fiko.. Son dönemin popüler uygulaması olan bir ilişki sitesine hızlı giriş yaparlar. Kerem Aslı’sını bulmuştur. ilk buluşma için seçilen yer Fiko’nun Cafesidir. Kerem Aslı ile buluşacaktır ancak onu bir sürpriz beklemektedir. Fiko’nun Kerem’e yapmak istediği küçük şaka tüm gidişatı değiştirir. Olayların karmakarışık olduğu İLK BULUŞMA’da Fiko ve Kerem’in durumları düzeltmesi hiç de kolay olmayacaktır. Atanamayan öğretmenler, tiyatro yetenek sınavına giren garson, Kasap havası müptelası belalı bir abi!',
      url: 'https://biletinial.com/tr-tr/tiyatro/ilk-bulusma',
      saat: '19:30',
      latitude: 41.225233101741125, longitude: 32.66816876519022),       
    ActivityModel(
      name: "Çimen Show - Cem İşçiler & Fazlı Polat",
      trip: "Talk Show",
      price: "350",
      image_url: "assets/images/cimen_show.jpg",
      timing: "08 Haziran 2024",
      belogto: 'activities',
      location: 'Karabük 100. yıl Kültür Merkezi',
      detail: 'Çimen Talk Show, seyicisiyle buluşmaya devam ediyor.',
      url: 'https://biletinial.com/tr-tr/tiyatro/cimen-show-cem-isciler-fazli-polat',
      saat: '20:30',
      latitude: 41.225233101741125, longitude: 32.66816876519022),
  
  
  
];


// places

List<PlaceModel> place_items = [
  PlaceModel(
  name: "Bulak Mencilis Mağarası",
  trip: "Turistik Yer",
  image_url: "assets/images/bulak_mencilis.jpg",
  belogto: 'places', 
  location: 'Merkez/Karabük',
  detail: 'Bulak Mencilis Mağarası, Karabük iline bağlı Safranbolu ilçesinde yer alan eşsiz bir doğal oluşumdur. Yüzyıllardır insanların ilgisini çeken ve araştırmacıların keşiflerine konu olan bu mağara, bölgenin doğal ve kültürel zenginliklerinden biridir. Mağara, etkileyici kalker oluşumları ve sarkıt/stalaktitlerle doludur. İçerisinde yer alan göller ve derinliklerindeki gizemli geçitler, ziyaretçilere adeta bir keşif yolculuğu sunar. Mağara, doğa sporları tutkunları için de popüler bir destinasyondur; mağara tırmanışı ve keşif turları burada düzenlenir. Bulak Mencilis Mağarası\'nın adının kökeni, bölgedeki eski zamanlara dayanmaktadır. "Bulak" kelimesi, Türkçe\'de kaynak suyu anlamına gelirken, "Mencilis" kelimesi ise Farsça kökenlidir ve "mağara" anlamına gelir. Bu isim, mağaranın içerisinde yer alan suların zenginliğini ve mağaranın önemini vurgular. Ziyaretçiler, mağaranın içerisinde doğanın sunduğu sessizliği ve güzelliği keşfederken, aynı zamanda bölgenin tarihi ve kültürel dokusuna da tanıklık ederler. Bulak Mencilis Mağarası, doğaseverler, macera arayanlar ve tarih meraklıları için unutulmaz bir deneyim sunar. Safranbolu\'nun doğal güzelliklerinden biri olan Bulak Mencilis Mağarası, bölgeye gelen herkesi büyüleyen bir doğa harikasıdır. Eşsiz doğal oluşumu ve etkileyici atmosferiyle, ziyaretçilere unutulmaz bir macera ve keşif fırsatı sunar.',
  address: 'Mencilis Mağara Sk., 78000 Bulak/Merkez/Karabük', 
  latitude: 41.27495394729584, longitude: 32.62430019773573,  //41.27495394729584, 32.62430019773573
),

  PlaceModel(
      name: "Hıdırlık Tepesi",
      trip: "Tarihi Yer",
      image_url: "assets/images/hidirlik_tepesi.jpg",
      belogto: 'places',
      location: 'Safranbolu/Karabük',
      detail: "Hıdırlık Tepesi, Türkiye'nin Karabük iline bağlı olan Safranbolu ilçesinde bulunan önemli bir tarihi mekandır. Safranbolu'nun tarihi dokusunu ve doğal güzelliklerini keşfetmek isteyen ziyaretçiler için vazgeçilmez bir durak noktasıdır. Tepenin zirvesine çıktığınızda, Safranbolu'nun eşsiz tarihi dokusunu gözler önüne seren bir manzara ile karşılaşırsınız. Tepenin eteklerinde yer alan tarihi yapılar ve yeşil alanlar, ziyaretçilere tarihi ve doğal güzelliklerle dolu bir ortam sunar. Hıdırlık Tepesi aynı zamanda doğaseverler için de çekici bir yerdir. Tepenin eteklerinde bulunan yeşillikler, yürüyüş yapmak veya piknik yapmak isteyen ziyaretçiler için ideal bir ortam sunar. Temiz hava ve muhteşem manzara eşliğinde dinlenme imkanı bulabilirsiniz. Hıdırlık Tepesi, Safranbolu'nun önemli simgelerinden biridir ve şehrin tarihini ve doğal güzelliklerini keşfetmek isteyen herkes için mutlaka görülmesi gereken bir noktadır.",
      address: 'Çeşme, 78600 Safranbolu/Karabük', 
      latitude: 41.24375287995455, longitude: 32.695153624716866), //41.24375287995455, 32.695153624716866
  PlaceModel(
      name: "Tokatlı Kanyonu",
      trip: "Ulusal Park",
      image_url: "assets/images/tokatli_kanyonu.jpg",
      belogto: 'places',
      location: 'Safranbolu/Karabük',
      detail: 'Tokatlı Kanyonu, Karabük ilinin Safranbolu ilçesinde yer alan doğal güzelliklerle dolu etkileyici bir kanyondur. Safranbolu\'nun doğal güzelliklerini keşfetmek isteyen ziyaretçiler için önemli bir turistik noktadır. Kanyon, yemyeşil doğası, derin vadileri ve berrak sularıyla dikkat çeker. Kanyon, binlerce yıllık jeolojik oluşumların bir ürünüdür ve zamanla oluşan muhteşem manzaralar sunar. Yüksek kayalıklar ve akarsuların oluşturduğu estetik görüntüler, ziyaretçilere unutulmaz bir deneyim yaşatır. Tokatlı Kanyonu, doğa yürüyüşü, fotoğrafçılık ve doğa sporları gibi etkinlikler için ideal bir ortam sunar. Kanyon boyunca yapılan yürüyüşler, ziyaretçilere muhteşem manzaralar eşliğinde unutulmaz bir serüven sunar. Ayrıca, kanyonun huzurlu atmosferi ve doğanın sesleri, stres atmak ve doğayla iç içe olmak isteyenler için ideal bir kaçış noktasıdır. Tokatlı Kanyonu, ziyaretçilere doğanın gücünü ve güzelliğini keşfetme fırsatı sunar. Doğa severler, macera arayanlar ve sakinlik arayanlar için mutlaka görülmesi gereken bir doğa harikasıdır.',
      address: 'Esentepe, 78600 İncekaya/Safranbolu/Karabük',
      latitude: 41.28155195841268, longitude: 32.68469749588283), //41.28155195841268, 32.68469749588283 
  PlaceModel(
      name: "Kaymakamlar Gezi Evi",
      trip: "Müze",
      image_url: "assets/images/kaymakamlar_gezi_evi.jpg",
      belogto: 'places',
      location: 'Safranbolu/Karabük',
      detail: 'Safranbolu\'nun tarihi atmosferi içinde bulunan Kaymakamlar Gezi Evi, şehrin zengin tarihini ve kültürünü ziyaretçilere sunan önemli bir tarihi mekandır. Osmanlı döneminden kalma geleneksel bir konak olan bu ev, tarihi ve mimari açıdan büyük bir öneme sahiptir. Kaymakamlar Gezi Evi, Safranbolu\'nun tarihi dokusunu koruyarak restore edilmiştir ve şehrin kültürel mirasını yaşatmayı amaçlamaktadır. Geleneksel Osmanlı mimarisiyle inşa edilmiş olan ev, ziyaretçilere geçmişe bir yolculuk yapma fırsatı sunar. Evin içinde bulunan sergi salonları, ziyaretçilere Safranbolu\'nun tarihini ve kültürünü daha yakından tanıma şansı verir. Eski dönemlere ait eşyalar, kostümler ve el sanatlarıyla dolu olan sergiler, şehrin zengin mirasını gözler önüne serer. Kaymakamlar Gezi Evi aynı zamanda etkinlik ve kültürel programlara da ev sahipliği yapar. Geleneksel el sanatları atölyeleri, müzik dinletileri ve tarihî anlatımlar gibi etkinlikler, ziyaretçilere unutulmaz bir deneyim sunar. Safranbolu\'ya seyahat edenler için Kaymakamlar Gezi Evi, şehrin zengin tarihini ve kültürel değerlerini keşfetmek için ideal bir noktadır. Bu tarihi mekan, ziyaretçilere geçmişe dönük bir yolculuk yapma ve Safranbolu\'nun benzersiz atmosferini deneyimleme fırsatı sunar.',
      address: 'Musalla, Hıdırlık Sk. no:6, 78600 Safranbolu/Karabük',
      latitude: 41.24427088136815, longitude: 32.694296882389246), //41.24427088136815, 32.694296882389246
  PlaceModel(
      name: "Eğriova Göleti",
      trip: "Doğa",
      image_url: "assets/images/egriova_goleti.jpg",
      belogto: 'places',
      location: 'Merkez/Karabük',
      detail: 'Karabük\'ün doğal güzellikleri arasında yer alan Eğriova Göleti, doğa severlere huzurlu bir kaçış ve dinlendirici bir ortam sunar. Doğal yaşamın içinde bulunan bu gölet, ziyaretçilere doğanın kucağında unutulmaz bir deneyim yaşatır. Eğriova Göleti, yeşilliklerle çevrili, temiz ve berrak sularıyla görenleri büyüler. Karabük\'ün eşsiz doğal dokusu içinde yer alan bu gölet, huzurlu bir ortamda dinlenmek ve stresten uzaklaşmak isteyenler için ideal bir noktadır. Gölet etrafındaki yürüyüş yolları ve piknik alanları, ziyaretçilere aktivite ve dinlenme imkanı sunar. Doğa yürüyüşleri yapabilir, göletin etrafında piknik yapabilir ve güneşin tadını çıkarabilirsiniz. Ayrıca balık tutmayı sevenler için gölette balık tutma imkanı da bulunmaktadır. Eğriova Göleti, aynı zamanda kuş gözlemciliği için de ideal bir noktadır. Gölette bulunan çeşitli kuş türlerini gözlemleyerek doğanın sunduğu zenginliği keşfedebilirsiniz. Kuş sesleri eşliğinde yapacağınız yürüyüşler ve gölet manzarası, ruhunuzu dinlendirir ve yenilenmenizi sağlar. Karabük\'ün doğal güzelliklerinden biri olan Eğriova Göleti, ziyaretçilere doğa ile iç içe unutulmaz bir deneyim sunar. Temiz havası, berrak suları ve doğal yaşamıyla gölet, şehrin stresinden uzaklaşmak ve dinlenmek isteyen herkes için mükemmel bir kaçış noktasıdır.',
      address: '78700 Kuzdağ/Karabük Merkez/Karabük',
      latitude: 41.085417177947946, longitude: 32.42835328423341), //41.085417177947946, 32.42835328423341
];


// hotels

List<HotelModel> hotel_items = [
  HotelModel(
      name: "Kanyonvadi Hotel",
      image_url: "assets/images/kanyonvadi_otel.jpg",
      belogto: 'Hotel',
      price: "1833",
      address: '100. Yıl, 1010. Cd. no.76, 78100 Karabük Merkez/Karabük',
      url: 'http://www.kanyonvadihotel.com/',
      latitude: 41.22754447765821, longitude: 32.668903468896836), //41.22754447765821, 32.668903468896836
  HotelModel(
      name: "Çeşmeli Konak Garden",
      image_url: "assets/images/cesmeli_konak.jpg",
      belogto: 'Hotel', 
      price: "1480",
      address: 'Babasultan mahallesi Celal Bayar caddesi 38 Hıdırlık yolu üzeri Tarihi Çarşı, 78600 Safranbolu/Karabük',
      url: 'http://www.cesmelikonak.com.tr/',
      latitude: 41.24499147720215, longitude: 32.69684026519127), //41.24499147720215, 32.69684026519127
  HotelModel(
      name: "Hilton Garden Inn Safranbolu",
      image_url: "assets/images/hilton_hotel.jpeg",
      belogto: 'Hotel', 
      price: "2195",
      address: 'Yenimahalle, Halkevi Sk. No:12, 78600 Safranbolu/Karabük',
      url: 'https://www.hilton.com.tr/oteller/turkiye/karabuk/hilton-garden-inn-safranbolu?WT.mc_id=zINDA0EMEA1MB2PSH3GGL4INTBPP5dkt6MULTIBR7_121127545_1003528_p16090400873&&&&&gad_source=1&gclid=Cj0KCQjwqpSwBhClARIsADlZ_TkFpAXNykPp2YaY5ab2lejAYmc4_22PfVS3n4o_XGD7xadnZ1n3ILYaAnpLEALw_wcB&gclsrc=aw.ds',
      latitude: 41.25864526539547, longitude: 32.67474709773476), //41.25864526539547, 32.67474709773476
  HotelModel(
      name: "Safranbolu Seyir Konak Otel",
      image_url: "assets/images/seyir_konak.jpg",
      belogto: 'Hotel', 
      price: "2046",
      address: 'Musalla, Hıdırlık arkası sokak no:3, 78000 Safranbolu/Karabük',
      url: 'https://seyirkonakotel.com/',
      latitude: 41.243524753015194, longitude: 32.6939860479866,), //41.243524753015194, 32.6939860479866
  HotelModel(
      name: "Akçe Konak",
      image_url: "assets/images/akce_konak.jpg",
      belogto: 'Hotel', 
      price: "1603",
      address: 'Çeşme, Hükümet Sk. No:18, 78600 Safranbolu/Karabük',
      url: 'https://www.akcekonaklari.com/',
      latitude: 41.24578354093258, longitude: 32.69180033820847), //41.24578354093258, 32.69180033820847
];

// restaurant

List<RestaurantModel> restaurant_items = [
  RestaurantModel(
      name: "Summit View Restaurant",
      image_url: "assets/images/ilk_bulusma.jpeg",
      belogto: 'Restaurant'),
  RestaurantModel(
      name: "Sea Breeze Eatery",
      image_url: "assets/images/ilk_bulusma.jpeg",
      belogto: 'Restaurant'),
  RestaurantModel(
      name: "Coastal Cove Cafe",
      image_url: "assets/images/ilk_bulusma.jpeg",
      belogto: 'Restaurant'),
  RestaurantModel(
      name: "Wilderness Restaurant",
      image_url: "assets/images/ilk_bulusma.jpeg",
      belogto: 'Restaurant'),
  RestaurantModel(
      name: "Tropical Treats",
      image_url: "assets/images/ilk_bulusma.jpeg",
      belogto: 'Restaurant'),
];
