import 'package:city_app/more_menu/drawer_content.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SliderBox {
  final String title;
  final String description;
  final String imagePath; // Image path property
  final String link; // New property for the link

  SliderBox({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.link,
  });
}

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
  final VoidCallback onTap;
  final bool isSliderButton; // Whether the button is inside a slider

  const ExerciseButton({
    Key? key,
    required this.text,
    required this.imagePath,
    required this.onPressed,
    required this.config,
    required this.onTap,
    this.isSliderButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return isSliderButton
        ? _buildSliderButton()
        : _buildRegularButton(context);
  }

  Widget _buildSliderButton() {
    return _buildRoundedContainer(
      width: 175,
      height: 150,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: Colors.transparent,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: config.fontSize,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
      ),
      image: AssetImage(imagePath),
    );
  }

  Widget _buildRegularButton(BuildContext context) {
    return _buildRoundedContainer(
      width: 175,
      height: 150,
      child: GestureDetector(
        onTap: () {
          // Perform the click action here
          // For example: Navigator.pushNamed(context, '/destinationPage');
          onPressed();
        },
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: config.buttonColor,
            onPrimary: config.textColor,
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

class HomePage extends StatelessWidget {
  final List<SliderBox> _sliderBoxes = [
    SliderBox(
      title: '',
      description: 'Description 1',
      imagePath: 'assets/images/img003.png',
      link: 'https://expo2023.org/', // Replace with your link
    ),
    SliderBox(
      title: '',
      description: 'Description 2',
      imagePath: 'assets/images/img004.png',
      link: 'https://www.kahramankart.com.tr/', // Replace with your link
    ),
    SliderBox(
      title: '',
      description: 'Description 3',
      imagePath: 'assets/images/img005.png',
      link: 'https://kahramanmaras.bel.tr/haber/2022/11/17/buyuksehir-kutuphanelerinde-ucretsiz-internet', // Replace with your link
    ),
    SliderBox(
      title: '',
      description: 'Description 4',
      imagePath: 'assets/images/img006.png',
      link: 'https://kahramanmaras.afad.gov.tr/', // Replace with your link
    ),
    // Add more SliderBoxes as needed
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonConfig = ExerciseButtonConfig(
      buttonColor: Colors.amber,
      textColor: Colors.black,
      fontSize: 14,
    );

    final PageController pageController = PageController(
      viewportFraction: 0.8,
      initialPage: _sliderBoxes.length * 100,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Madalyalı Şehir",
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
        child: DrawerContent(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 24,),
              Container(
                height: 180,
                child: PageView.builder(
                  itemCount: _sliderBoxes.length * 180,
                  controller: pageController,
                  itemBuilder: (context, index) {
                    final currentBox = _sliderBoxes[index % _sliderBoxes.length];
                    return Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: ExerciseButton(
                        text: currentBox.title,
                        imagePath: currentBox.imagePath,
                        onPressed: () {
                          // Button pressed
                        },
                        onTap: () {
                          // Open the link when the slider box is tapped
                          _launchLink(currentBox.link);
                        },
                        config: buttonConfig,
                        isSliderButton: true,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExerciseButton(
                    text: 'Kahramanmaraş',
                    imagePath: 'assets/images/img1.png',
                    onPressed: () {
                      // Button 1 pressed
                    },
                    config: buttonConfig, onTap: () {  },
                  ),
                  const SizedBox(width: 16),
                  ExerciseButton(
                    text: 'Kahramanmaraş',
                    imagePath: 'assets/images/img1.png',
                    onPressed: () {
                      // Button 1 pressed
                    },
                    config: buttonConfig, onTap: () {  },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExerciseButton(
                    text: 'Tarihi Kokular',
                    imagePath: 'assets/images/img2.png',
                    onPressed: () {
                      // Button 3 pressed
                    },
                    config: buttonConfig, onTap: () {  },
                  ),
                  const SizedBox(width: 16),
                  ExerciseButton(
                    text: 'Tarihi Kokular',
                    imagePath: 'assets/images/img2.png',
                    onPressed: () {
                      // Button 3 pressed
                    },
                    config: buttonConfig, onTap: () {  },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExerciseButton(
                    text: 'Dondurmaya Doyamayacaksınız',
                    imagePath: 'assets/images/img3.png',
                    onPressed: () {
                      // Button 5 pressed
                    },
                    config: buttonConfig, onTap: () {  },
                  ),
                  const SizedBox(width: 16),
                  ExerciseButton(
                    text: 'Dondurmaya Doyamayacaksınız',
                    imagePath: 'assets/images/img3.png',
                    onPressed: () {
                      // Button 5 pressed
                    },
                    config: buttonConfig, onTap: () {  },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExerciseButton(
                    text: 'Kurtuluş',
                    imagePath: 'assets/images/img4.png',
                    onPressed: () {
                      // Button 5 pressed
                    },
                    config: buttonConfig, onTap: () {  },
                  ),
                  const SizedBox(width: 16),
                  ExerciseButton(
                    text: 'Kurtuluş',
                    imagePath: 'assets/images/img4.png',
                    onPressed: () {
                      // Button 5 pressed
                    },
                    config: buttonConfig, onTap: () {  },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExerciseButton(
                    text: 'Kültürel Miraslar',
                    imagePath: 'assets/images/img5.png',
                    onPressed: () {
                      // Button 5 pressed
                    },
                    config: buttonConfig, onTap: () {  },
                  ),
                  const SizedBox(width: 16),
                  ExerciseButton(
                    text: 'Kültürel Miraslar',
                    imagePath: 'assets/images/img5.png',
                    onPressed: () {
                      // Button 5 pressed
                    },
                    config: buttonConfig, onTap: () {  },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExerciseButton(
                    text: 'Tatil & Eğlence',
                    imagePath: 'assets/images/img6.png',
                    onPressed: () {
                      // Button 5 pressed
                    },
                    config: buttonConfig, onTap: () {  },
                  ),
                  const SizedBox(width: 16),
                  ExerciseButton(
                    text: 'Tatil & Eğlence',
                    imagePath: 'assets/images/img6.png',
                    onPressed: () {
                      // Button 5 pressed
                    },
                    config: buttonConfig, onTap: () {  },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  

  // Function to open a link
  Future<void> _launchLink(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw 'Could not launch $link';
    }
  }
}
