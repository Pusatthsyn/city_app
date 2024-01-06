import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

class NaturalWidget extends StatelessWidget {
  final String title;
  final List<String> images;
  final String description;
  final Coords coordinates;

  const NaturalWidget({super.key, 
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

class Natural extends StatelessWidget {
  const Natural({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          NaturalWidget(
            title: "Uludaz Tepesi",
            images: const [
              'assets/places/47.jpg',
              'assets/places/48.jpg',
              'assets/places/49.jpg',
            ],
            description:
                "   Uludaz uğur böcekleri oldukça popüler olmuş durumda. Haziran ayında mevsimlik göç ile Uludaz Tepesi’nde çoğalan uğur böcekleri, hem yöre halkının hem doğasever fotoğrafçıların ilgi odağı oluyor. 2259 m rakıma sahip Uludaz zirvesi, Kahramanmaraş’ta doğa turizmi açısından oldukça önemli bir yere sahip.\n   Yedi noktalı uğur böcekleri yaz aylarında bölgede bir canlılık oluşturuyor. Tepeye çıkarsan bir taşın ya da gevşemiş bir ağaç kabuğunun altında 50’den fazla uğur böceğini bir arada görmenin heyecanını yaşayabilirsin. Burada renkli fotoğraflar çekmek de mümkün.",
            coordinates: Coords(37.57394458865658, 36.92623887456157),
          ),
          NaturalWidget(
            title: "Başkonuş Yaylası",
            images: const [
              'assets/places/50.jpg',
              'assets/places/51.jpg',
              'assets/places/52.jpg',
            ],
            description:
                "   Kahramanmaraş’ta kampçılık ve yayla turizmi açısından önemli bir yere sahip olan Başkonuş Yaylası, çam ağaçları arasında güzel zaman geçirme imkanı sunuyor. Şehrin merkezinden buraya 1 saatlik araç yolculuğu ile ulaşmak mümkün.\n   Başkonuş Yaylası’nda doğal yürüyüş parkurları bulunuyor. Dilersen geniş piknik alanlarında dinlenip doğada olmanın tadını çıkarabilirsin.",
            coordinates: Coords(37.57841529538948, 36.92441114102885),
          ),
          NaturalWidget(
            title: "Yedikuyular Kayak Merkezi",
            images: const [
              'assets/places/53.jpg',
              'assets/places/54.jpg',
              'assets/places/55.jpg',
            ],
            description:
                "   Şehrin merkezine 20 km uzaklıkta bulunan kayak merkezi, kış sporlarına ilgi duyan yöre halkı için oldukça güzel bir alan sunuyor. Yedikuyular Kayak Merkezi’nde zorluk seviyeleri değişen 3 farklı pist bulunuyor. Hem amatör hem de profesyonel sporcular için imkanlar mevcut. Sen de dilersen kayak kiralama hizmetinden yararlanarak Kahramanmaraş’ta kayak deneyimi yaşayabilirsin.",
            coordinates: Coords(37.57841529538948, 36.92441114102885),
          ),
        ],
      ),
    );
  }
}
