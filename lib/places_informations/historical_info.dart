import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HistoricalWidget extends StatelessWidget {
  final String title;
  final List<String> images;
  final String description;
  final Coords coordinates;

  const HistoricalWidget({super.key, 
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
        const SizedBox(height: 60),
      ],
    );
  }
}

class Historical extends StatelessWidget {
  const Historical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HistoricalWidget(
            title: "TARİHİ MARAŞ KALESİ",
            images: const [
              'assets/places/37.jpg',
              'assets/places/38.jpg',
              'assets/places/39.jpg',
              'assets/places/40.jpg',
            ],
            description:
                "   Şehrin merkezinde yer alan kalenin, kesin inşa tarihi bilinmemekle beraber, kale ve çevresinde yapılan kazılarda Geç Hitit Dönemine ait birçok tarihî eser bulunmuştur. Ayrıca “Maraş Aslanı” olarak bilinen ve Kahramanmaraş Müzesi’nde sergilenen aslan heykeli üzerindeki Çivi yazısından da Kahramanmaraş Kalesi’nin ilk defa, Geç Hitit Kralı III. Halpuruntaş (M.Ö. 810-783) tarafından inşa ettirildiği anlaşılmaktadır. ",
            coordinates: Coords(37.57394458865658, 36.92623887456157),
          ),
          HistoricalWidget(
            title: "ESHAB-I KEHF KÜLLİYESİ",
            images: const [
              'assets/places/41.jpg',
              'assets/places/42.jpg',
              'assets/places/43.jpg',
            ],
            description:
                "   Eshab-ı Kehf Külliyesi’nin olduğu bölge, Hristiyanlığın yayıldığı dönemde yaşanmış Eshab-ı Kehf ya da Yedi Uyurlar olarak bilinen olayın geçtiği mağaradır. ",
            coordinates: Coords(37.57394458865658, 36.92623887456157),
          ),
          HistoricalWidget(
            title: "GELENEKSEL TARİHİ MARAŞ KONAKLARI",
            images: const [
              'assets/places/44.jpg',
              'assets/places/45.jpg',
              'assets/places/46.jpg',
            ],
            description:
                "   Türk-Sivil Mimarisinin bir zincir halkasını da Tarihi Maraş Konakları oluşturur.  Enikli/Kuzulu Kapısı, geniş avlusu, yüksek duvarları, patır patır akan süslü çeşmeleri, cepheyi hareketlendiren cumbaları, bağdadi duvar örgüleri ile yöreye has karakteristik özellikler ile sivil mimarinin en nadide örnekleri buradadır. \n   Bu kapsamda Dedeoğlu Konakları, Kocabaşlar Konağı, Mahmut Arif-i Paşa Konağı, Deli Gönül Konağı ve daha birçokları kapılarını açmış konuklarını beklemektedir.",
            coordinates: Coords(37.57841529538948, 36.92441114102885),
          ),
        ],
      ),
    );
  }
}
