import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weddingapp/zoom_drawer.dart';
import '../../model/splash_view_model.dart';
import 'Home Page/home_page_view.dart';
import 'Inspirations/inspirations_view.dart';
import 'Vendors Page/vendors_view.dart';
import 'WishList/wishlist_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({Key? key}) : super(key: key);

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);

    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var splashVM = Get.find<SplashViewMode>();
    return Container(
      color: const Color(0xffffffff),
      child: Scaffold(
        key: splashVM.scaffoldKey,
        body: TabBarView(
          controller: controller,
          children: const [
            DrawerPage(),
            VendorsView(),
            WishlistView(),
            InspirationsView(),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: BottomAppBar(
            color: Colors.pink.withOpacity(0.1),
            child: TabBar(
              controller: controller,
              indicatorColor: const Color(0xff6B0D52),
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 12),
              indicatorWeight: 1,
              labelColor: const Color(0xff4C1711),
              labelStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
              unselectedLabelColor: const Color(0xff564740),
              unselectedLabelStyle: const TextStyle(fontSize: 10),
              tabs: [
                Tab(
                  text: "Home",
                  icon: Image.asset(
                    selectTab == 0 ? "assets/images/home_filled.png" : "assets/images/home.png",
                    width: 25,
                    height: 25,
                    color: selectTab == 0 ? Color(0xff6B0D52) : Color(0xff564740),
                  ),
                ),
                Tab(
                  text: "Vendors",
                  icon: Image.asset(
                    selectTab == 1 ? "assets/images/vendor_filled.png" : "assets/images/vendor.png",
                    width: 25,
                    height: 25,
                    color: selectTab == 0 ? Color(0xff564740) : Color(0xff6B0D52),
                  ),
                ),
                Tab(
                  text: "Wishlist",
                  icon: Image.asset(
                    selectTab == 2 ? "assets/images/wishlist_filled.png" : "assets/images/wishlist.png",
                    width: 25,
                    height: 25,
                    color: selectTab == 0 ? Color(0xff564740) : Color(0xff6B0D52),
                  ),
                ),
                Tab(
                  text: "Inspirations",
                  icon: Image.asset(
                    selectTab == 3 ? "assets/images/idea_filled.png" : "assets/images/idea.png",
                    width: 25,
                    height: 25,
                    color: selectTab == 0 ? Color(0xff564740) : Color(0xff6B0D52),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
