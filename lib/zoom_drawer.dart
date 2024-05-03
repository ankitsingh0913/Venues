import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:weddingapp/Views/Main%20Tab%20View/Home%20Page/home_page_view.dart';
import 'package:weddingapp/Views/Main%20Tab%20View/main_tab_view.dart';
import 'package:weddingapp/menu_screen.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});


  @override
  Widget build(BuildContext context) {
    return const ZoomDrawer(
      menuScreenWidth: 390,
      angle: 0,
      mainScreenScale: 0.1,
      borderRadius: 40,
      menuScreen: MenuScreenPage(),
      mainScreen: HomeTabView()
    );
  }
}
