import 'package:city_app/more_menu/drawer_content.dart';
import 'package:city_app/places_informations/culture_and_art_info.dart';
import 'package:city_app/places_informations/delicious_info.dart';
import 'package:city_app/places_informations/historical_info.dart';
import 'package:city_app/places_informations/museums_info.dart';
import 'package:city_app/places_informations/natural_info.dart';
import 'package:city_app/places_informations/park_and_picnic_info.dart';
import 'package:city_app/places_informations/religious_info.dart';
import 'package:city_app/places_informations/thermal_info.dart';
import 'package:flutter/material.dart';

class PlaceButtonConfig {
  final Color textColor;
  final double fontSize;

  PlaceButtonConfig({
    required this.textColor,
    required this.fontSize,
  });
}

class PlaceButton extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onPressed;
  final PlaceButtonConfig config;
  final FontWeight? fontWeight; // Yeni eklenen satır

  const PlaceButton({super.key, 
    required this.text,
    required this.imagePath,
    required this.onPressed,
    required this.config,
    this.fontWeight, // Yeni eklenen satır
  });

  @override
  Widget build(BuildContext context) {
    return _buildRoundedContainer(
      width: 368,
      height: 180,
      child: InkWell(
        onTap: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: config.textColor,
                fontSize: config.fontSize,
                fontStyle: FontStyle.italic,
                fontWeight: fontWeight, // Yeni eklenen satır
              ),
            ),
          ],
        ),
      ),
      image: AssetImage(imagePath),
    );
  }

  Widget _buildRoundedContainer({
    required double width,
    required double height,
    required Widget child,
    required ImageProvider<Object> image,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image(
              image: image,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: -4,
              left: 0,
              right: 0,
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}

//////////

class PlaceButton2Config {
  final Color buttonColor;
  final Color textColor;
  final double fontSize;

  PlaceButton2Config({
    required this.buttonColor,
    required this.textColor,
    required this.fontSize,
  });
}

class PlaceButton2 extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onPressed;
  final PlaceButtonConfig config;
  final FontWeight? fontWeight; // Yeni eklenen satır

  const PlaceButton2({super.key, 
    required this.text,
    required this.imagePath,
    required this.onPressed,
    required this.config,
    this.fontWeight, // Yeni eklenen satır
  });

  @override
  Widget build(BuildContext context) {
    return _buildRoundedContainer2(
      width: 180,
      height: 210,
      child: InkWell(
        onTap: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: config.textColor,
                fontSize: config.fontSize,
                fontStyle: FontStyle.italic,
                fontWeight: fontWeight, // Yeni eklenen satır
              ),
            ),
          ],
        ),
      ),
      image: AssetImage(imagePath),
    );
  }

  Widget _buildRoundedContainer2({
    required double width,
    required double height,
    required Widget child,
    required ImageProvider<Object> image,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image(
              image: image,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: -4,
              left: 0,
              right: 0,
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}

class TransportScreen extends StatelessWidget {
  const TransportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonConfig = PlaceButtonConfig(
      textColor: Colors.white,
      fontSize: 24,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mutlaka Keşfedin",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.grey[400],
      drawer: const Drawer(
        backgroundColor: Colors.grey,
        child: DrawerContent(
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Resme tıklandığında yapılacak işlemler
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ArkeolojiMuzesi()));
                    },
                    child: PlaceButton(
                      text: 'Müzeler',
                      imagePath: 'assets/places/7.png',
                      onPressed: () {
                        // Placeholder
                      },
                      config: buttonConfig,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Resme tıklandığında yapılacak işlemler
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const CultureAndArt()));
                    },
                  child: PlaceButton2(
                    text: 'Kültür ve Sanat',
                    imagePath: 'assets/places/1.png',
                    onPressed: () {
                      // Button 3 pressed
                    },
                    config: buttonConfig,
                    fontWeight: FontWeight.w900,
                  ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      // Resme tıklandığında yapılacak işlemler
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Religious()));
                    },
                  child: PlaceButton2(
                    text: 'Dini Mekanlar',
                    imagePath: 'assets/places/2.png',
                    onPressed: () {
                      // Button 3 pressed
                    },
                    config: buttonConfig,
                    fontWeight: FontWeight.w900,
                  ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Resme tıklandığında yapılacak işlemler
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Delicious()));
                    },
                  child: PlaceButton2(
                    text: 'Lezzet Durakları',
                    imagePath: 'assets/places/3.png',
                    onPressed: () {
                      // Button 3 pressed
                    },
                    config: buttonConfig,
                    fontWeight: FontWeight.w900,
                  ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      // Resme tıklandığında yapılacak işlemler
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Historical()));
                    },
                  child: PlaceButton2(
                    text: 'Tarihi Kokular',
                    imagePath: 'assets/places/4.png',
                    onPressed: () {
                      // Button 3 pressed
                    },
                    config: buttonConfig,
                    fontWeight: FontWeight.w900,
                  ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Resme tıklandığında yapılacak işlemler
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Natural()));
                    },
                    child: PlaceButton(
                      text: 'Doğal Güzellikler',
                      imagePath: 'assets/places/8.png',
                      onPressed: () {
                        // Placeholder
                      },
                      config: buttonConfig,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
             Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Resme tıklandığında yapılacak işlemler
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ParkAndPicnic()));
                    },
                  child: PlaceButton2(
                    text: 'Park & Piknik',
                    imagePath: 'assets/places/5.png',
                    onPressed: () {
                      // Button 3 pressed
                    },
                    config: buttonConfig,
                    fontWeight: FontWeight.w900,
                  ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      // Resme tıklandığında yapılacak işlemler
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Thermal()));
                    },
                  child: PlaceButton2(
                    text: 'Kaplıcalar',
                    imagePath: 'assets/places/6.png',
                    onPressed: () {
                      // Button 3 pressed
                    },
                    config: buttonConfig,
                    fontWeight: FontWeight.w900,
                  ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
