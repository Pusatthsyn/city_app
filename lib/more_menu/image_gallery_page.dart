import 'package:flutter/material.dart';

class ExerciseButtonConfig {
  final Color buttonColor;
  final Color textColor;
  final double fontSize;

  ExerciseButtonConfig({
    required this.buttonColor,
    required this.textColor,
    required this.fontSize,
  });
}

class ExerciseButton extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onPressed;
  final ExerciseButtonConfig config;

  const ExerciseButton({
    Key? key,
    required this.text,
    required this.imagePath,
    required this.onPressed,
    required this.config,
  });

  @override
  Widget build(BuildContext context) {
    return _buildRoundedContainer(
      width: 175,
      height: 175,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: config.textColor,
          backgroundColor: config.buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: config.fontSize,
            fontStyle: FontStyle.italic,
          ),
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

class ImageGalleryPage extends StatefulWidget {
  const ImageGalleryPage({Key? key}) : super(key: key);

  @override
  _ImageGalleryPageState createState() => _ImageGalleryPageState();
}

class _ImageGalleryPageState extends State<ImageGalleryPage> {
  final PageController _pageController = PageController();
  
  final List<String> _imagePaths0 = [
    'assets/photos/1.png',
    'assets/photos/2.png',
    'assets/photos/3.png',
    'assets/photos/4.png',
  ];
  final List<String> _imagePaths1 = [
    'assets/photos/5.png',
    'assets/photos/6.png',
    'assets/photos/7.png',
    'assets/photos/8.png',
  ];
  final List<String> _imagePaths2 = [
    'assets/photos/9.png',
    'assets/photos/10.png',
    'assets/photos/11.png',
    'assets/photos/12.png',
  ];
  final List<String> _imagePaths3 = [
    'assets/photos/13.png',
    'assets/photos/14.png',
    'assets/photos/15.png',
    'assets/photos/16.png',
  ];
  final List<String> _imagePaths4 = [
    'assets/photos/17.png',
    'assets/photos/18.png',
  ];
  final List<String> _imagePaths5 = [
    'assets/photos/19.png',
    'assets/photos/20.png',
    'assets/photos/21.png',
    'assets/photos/22.png',
  ];
  final List<String> _imagePaths6 = [
    'assets/photos/23.png',
    'assets/photos/24.png',
    'assets/photos/25.png',
  ];
  final List<String> _imagePaths7 = [
    'assets/photos/26.png',
    'assets/photos/27.png',
    'assets/photos/28.png',
  ];
  final List<String> _imagePaths8 = [
    'assets/photos/29.png',
    'assets/photos/30.png',
    'assets/photos/31.png',
    'assets/photos/32.png',
  ];

  @override
  Widget build(BuildContext context) {
    final buttonConfig = ExerciseButtonConfig(
      buttonColor: Colors.grey,
      textColor: Colors.black,
      fontSize: 14,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Fotoğraf Galerisi",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExerciseButton(
                    text: '7 Güzel Adam Müzesi',
                    imagePath: 'assets/photos/0.jpg',
                    onPressed: () {
                      _openPhotoSlider(context, _imagePaths0);
                    },
                    config: buttonConfig,
                  ),
                  const SizedBox(width: 16),
                  ExerciseButton(
                    text: 'Tarihi Konak',
                    imagePath: 'assets/photos/1.jpg',
                    onPressed: () {
                      _openPhotoSlider(context, _imagePaths1);
                    },
                    config: buttonConfig,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExerciseButton(
                    text: 'Kahramanmaraş Kalesi',
                    imagePath: 'assets/photos/2.jpg',
                    onPressed: () {
                      _openPhotoSlider(context, _imagePaths2);
                    },
                    config: buttonConfig,
                  ),
                  const SizedBox(width: 16),
                  ExerciseButton(
                    text: 'Abdulahamid Han Camii',
                    imagePath: 'assets/photos/3.jpg',
                    onPressed: () {
                      _openPhotoSlider(context, _imagePaths3);
                    },  
                    config: buttonConfig,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExerciseButton(
                    text: 'Tarihi Taş Köprü',
                    imagePath: 'assets/photos/4.jpg',
                    onPressed: () {
                      _openPhotoSlider(context, _imagePaths4);
                    },
                    config: buttonConfig,
                  ),
                  const SizedBox(width: 16),
                  ExerciseButton(
                    text: 'Taş Mescid',
                    imagePath: 'assets/photos/5.jpg',
                    onPressed: () {
                      _openPhotoSlider(context, _imagePaths5);
                    },
                    config: buttonConfig,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExerciseButton(
                    text: 'Kapalı Çarşı',
                    imagePath: 'assets/photos/6.jpg',
                    onPressed: () {
                      _openPhotoSlider(context, _imagePaths6);
                    },
                    config: buttonConfig,
                  ),
                  const SizedBox(width: 16),
                  ExerciseButton(
                    text: 'Jeoloji Müzesi',
                    imagePath: 'assets/photos/7.jpg',
                    onPressed: () {
                      _openPhotoSlider(context, _imagePaths7);
                    },
                    config: buttonConfig,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 16),
                  ExerciseButton(
                    text: '4 Minareli Asma Köprü',
                    imagePath: 'assets/photos/9.jpg',
                    onPressed: () {
                      _openPhotoSlider(context, _imagePaths8);
                    },
                    config: buttonConfig,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _openPhotoSlider(BuildContext context, List<String> imagePaths) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        insetPadding: const EdgeInsets.all(16),
        child: Container(
          width: 400,
          height: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), // Köşeleri kavisli yapar
            border: Border.all(color: Colors.white, width: 8), // Beyaz çerçeve ekler
          ),
          child: PageView.builder(
            controller: _pageController,
            itemCount: imagePaths.length,
            itemBuilder: (context, index) {
              return Image.asset(
                imagePaths[index],
                fit: BoxFit.cover,
              );
            },
          ),
        ),
      );
    },
  );
}

}

