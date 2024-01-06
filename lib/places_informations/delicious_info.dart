import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DeliciousWidget extends StatelessWidget {
  final String title;
  final List<String> images;
  final String description;
  final Coords coordinates;

  const DeliciousWidget({super.key, 
    required this.title,
    required this.images,
    required this.description,
    required this.coordinates,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        CarouselSlider(
          items: images.map((image) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 240.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 300),
            viewportFraction: 0.8,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            description,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton.icon(
          onPressed: () async {
            var location = Location();
            var value = await location.getLocation();
            if (await MapLauncher.isMapAvailable(MapType.google) != null) {
              MapLauncher.showDirections(
                mapType: MapType.google,
                destination: coordinates,
                origin: Coords(
                  value.latitude!.toDouble(),
                  value.longitude!.toDouble(),
                ),
              );
            }
          },
          icon: const Icon(Icons.assistant_navigation),
          label: Text("$title' ne Git"),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}

class Delicious extends StatelessWidget {
  const Delicious({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          DeliciousWidget(
            title: "Yaşar Pastanesi",
            images: const [
              'assets/places/22.jpg',
              'assets/places/23.jpg',
              'assets/places/24.jpg',
            ],
            description:
                "   Bir Maraş klasiği, bir dondurma efsanesi olan Yaşar Pastanesi’nin insana bugüne kadar yediklerim neymiş dedirtecek güzellikle bir dondurması var. \n   Girişinde de ‘Her dondurma dondurma değildir’ yazısı ile sizi karşılayan Yaşar Pastanesi’sinin keçi sütü ile hazırladığı dondurmasını yemelere doyamazsanız özel olarak paketletip evinize de götürebilirsiniz.",
            coordinates: Coords(37.57394458865658, 36.92623887456157),
          ),
          DeliciousWidget(
            title: "Küçük Ev Lokantası",
            images: const [
              'assets/places/25.jpg',
              'assets/places/26.jpg',
              'assets/places/27.jpg',
            ],
            description:
                "   Maraş’ın geleneksel ev yemeklerini tatmak istiyorsanız Küçük Ev en lezzetli alternatifler arasında ilk sıralarda yer alıyor. \n   Sarımsaklı sumak ile tatlandırdıkları kele paça çorbası, içli köfte, mumbar dolması ve Maraş kebabı Küçük Ev’de tadabileceğiniz yöresel lezzetlerden sadece birkaçı.",
            coordinates: Coords(37.57394458865658, 36.92623887456157),
          ),
          DeliciousWidget(
            title: "Tarihi Cumhuriyet Lokantası",
            images: const [
              'assets/places/28.jpg',
              'assets/places/29.jpg',
              'assets/places/30.jpg',
            ],
            description:
                "   Tarihi Cumhuriyet Lokantası, ev yemeği tadında, suyuna ekmek banmaktan kendinizi alıkoyamayacağınız enfes lezzetler tatmak isteyenleri bekliyor. \n   Özellikle de tereyağında kızartılmış pide üzerinde servis edilen mis gibi kebabının tadına doyamayacaksınız benden söylemesi.",
            coordinates: Coords(37.57841529538948, 36.92441114102885),
          ),
          DeliciousWidget(
            title: "Kebaphan Fırınlı Kasap Lokanta",
            images: const [
              'assets/places/31.jpg',
              'assets/places/32.jpg',
              'assets/places/33.jpg',
            ],
            description:
                "   Kebaphan, kuzu etinden yapılan ve kuyruk yağı ile lezzetlendirilen yanyanayı tadabileceğiniz en lezzetli fırınlı kasaplardan bir tanesi. \n   Ancak Kebaphan’ın öyle bir spesiyali var ki tadına doyum olmaz: Kaşarlı, sucuklu ve tabi ki etli seçenekleri olan kapalı pide tadında çıtır çıtır fırın beyti. Kebaphan Fırınlı Kasap’a gideseniz bu enfes beytinin tadına mutlaka bakın derim",
            coordinates: Coords(37.57841529538948, 36.92441114102885),
          ),
          DeliciousWidget(
            title: "Bir Ekşi Bir Tatlı",
            images: const [
              'assets/places/34.jpg',
              'assets/places/35.jpg',
              'assets/places/36.jpg',
            ],
            description:
                "   Zeytinlerin Ayvalık’tan, Hatay’dan, beyaz peynirin Ezine’den, pastırmanın Kayseri’den, tereyağın Trabzon’dan geldiği özenle seçilmiş kahvaltılıklarla donatılmış bir sofra ile güne başlamak istiyorsanız Bir Ekşi Bir Tatlı en güzel alternatif olacaktır. \n   Kendi yaptıkları ekşi mayalı ekmekleri ile öne çıkan Bir Ekşi Bir Tatlı’nın ekşi mayalı simidi ve siyez unlu poğaçasının tadına da bakmayı ihmal etmeyin derim.",
            coordinates: Coords(37.57841529538948, 36.92441114102885),
          ),
        ],
      ),
    );
  }
}
