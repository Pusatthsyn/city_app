import 'dart:io';
import 'package:city_app/screens/home_screen.dart';
import 'package:city_app/screens/news_screen.dart';
import 'package:city_app/screens/transport_screen.dart';
import 'package:city_app/screens/weather_screen.dart';
import 'package:city_app/user_login/user_login.dart';
import 'package:city_app/utils/app_colors.dart';
import 'package:city_app/viewmodel/article_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatefulWidget {
  static String routeName = "/DashboardScreen";

  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectTab = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ChangeNotifierProvider(
      create: (context) => ArticleListViewModel(), // Burada ArticleListViewModel'ı oluşturun
      child: const NewsPage(),
    ),
    const TransportScreen(),
    UserLogin(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WeatherScreen()),
          );
        },
        child: SizedBox(
          width: 70,
          height: 70,
          child: Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: AppColors.primaryG),
              borderRadius: BorderRadius.circular(35),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 8)
              ],
            ),
            child: const Icon(Icons.cloud, color: AppColors.whiteColor, size: 32),
          ),
        ),
      ),
      body: IndexedStack(
        index: selectTab,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomAppBar(
        height: Platform.isIOS ? 80 : 75,
        color: Colors.transparent,
        padding: const EdgeInsets.all(0),
        child: Container(
          height: Platform.isIOS ? 80 : 85,
          decoration: const BoxDecoration(
              color: AppColors.whiteColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, -8))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(
                  icon: "assets/icons/1.png",
                  selectIcon: "assets/icons/2.png",
                  isActive: selectTab == 0,
                  onTap: () {
                    if (mounted) {
                      setState(() {
                        selectTab = 0;
                      });
                    }
                  }),
              TabButton(
                  icon: "assets/icons/3.png",
                  selectIcon: "assets/icons/4.png",
                  isActive: selectTab == 1,
                  onTap: () {
                    if (mounted) {
                      setState(() {
                        selectTab = 1;
                      });
                    }
                  }),
              const SizedBox(width: 30),
              TabButton(
                  icon: "assets/icons/5.png",
                  selectIcon: "assets/icons/6.png",
                  isActive: selectTab == 2,
                  onTap: () {
                    if (mounted) {
                      setState(() {
                        selectTab = 2;
                      });
                    }
                  }),
              TabButton(
                  icon: "assets/icons/9.png",
                  selectIcon: "assets/icons/10.png",
                  isActive: selectTab == 3,
                  onTap: () {
                    if (mounted) {
                      setState(() {
                        selectTab = 3;
                      });
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final String icon;
  final String selectIcon;
  final bool isActive;
  final VoidCallback onTap;

  const TabButton(
      {Key? key,
      required this.icon,
      required this.selectIcon,
      required this.isActive,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            isActive ? selectIcon : icon,
            width: 35,
            height: 35,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(height: isActive ? 8 : 12),
          Visibility(
            visible: isActive,
            child: Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: AppColors.secondaryG),
                  borderRadius: BorderRadius.circular(2)),
            ),
          )
        ],
      ),
    );
  }
}
