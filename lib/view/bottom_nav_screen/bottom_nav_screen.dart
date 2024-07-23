import 'package:flutter/material.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';
import 'package:netflix_clone_app/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:netflix_clone_app/view/downloads_screen/downloads_screen.dart';
import 'package:netflix_clone_app/view/home_screen/home_screen.dart';
import 'package:netflix_clone_app/view/more_screen/more_screen.dart';
import 'package:netflix_clone_app/view/search_screen/search_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;
  List<Widget> Myscreens = [
    HomeScreen(),
    SearchScreen(),
    ComingSoonScreen(),
    DownloadsScreen(),
    MoreScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Myscreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          // selectedFontSize: 8,
          backgroundColor: ColorConstants.mainBlack,
          selectedItemColor: ColorConstants.mainWhite,
          unselectedItemColor: ColorConstants.grey_cont_shade,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 24,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 24,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_collection_outlined,
                size: 24,
              ),
              label: 'Coming Soon',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.download,
                size: 24,
              ),
              label: 'Downloads',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                size: 24,
              ),
              label: 'More',
            )
          ]),
    );
  }
}
