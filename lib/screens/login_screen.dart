import 'package:city_app/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  final String _welcome = "MADALYALI ŞEHİR";
  final String _buttonText = 'HADİ BAŞLA';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/img01.png'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _welcome,
              textAlign: TextAlign.center,
              style: ProjectStyle.welcomeStyle,
            ),
            const SizedBox(height: 400),
            _createButton(context),
            const SizedBox(height: ButtonHeights.buttonNormalHeight),
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DashboardScreen(),
          ),
        );
      },
      icon: const Icon(
        Icons.double_arrow,
        color: Colors.black,
      ),
      label: SizedBox(
        height: ButtonHeights.buttonNormalHeight,
        child: Center(
          child: Text(
            _buttonText,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber, // Buton rengi
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // Köşelerden kavis
        ),
        padding:
            const EdgeInsets.symmetric(horizontal: 70), // Kenarlardan mesafe
      ),
    );
  }
}

class ProjectStyle {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 8,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.italic,
      letterSpacing: 8,
      color: Colors.white,
      fontSize: 46,
      fontWeight: FontWeight.w900);
}

class ButtonHeights {
  static const double buttonNormalHeight = 60;
}
