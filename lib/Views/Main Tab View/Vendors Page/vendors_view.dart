import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weddingapp/Common%20Widget/vendors_cell.dart';
import 'package:weddingapp/Views/Main%20Tab%20View/Vendors%20Page/bridal_wear_view.dart';
import 'package:weddingapp/Views/Main%20Tab%20View/Vendors%20Page/catering_view.dart';
import 'package:weddingapp/Views/Main%20Tab%20View/Vendors%20Page/groom_wear_view.dart';
import 'package:weddingapp/Views/Main%20Tab%20View/Vendors%20Page/makeup_view.dart';
import 'package:weddingapp/Views/Main%20Tab%20View/Vendors%20Page/photographer_view.dart';
import 'package:weddingapp/Views/Main%20Tab%20View/Vendors%20Page/venues_view.dart';

import '../../../model/splash_view_model.dart';

class VendorsView extends StatefulWidget {
  const VendorsView({Key? key}) : super(key: key);

  @override
  State<VendorsView> createState() => _VendorsViewState();
}

class _VendorsViewState extends State<VendorsView> with SingleTickerProviderStateMixin {
  late TabController controller;
  int selectTab = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 6, vsync: this);
    controller.addListener(() {
      setState(() {
        selectTab = controller.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  Get.find<SplashViewMode>().openDrawer();
                },
                icon: Image.asset(
                  "assets/images/menu.png",
                  width: 25,
                  height: 25,
                  fit: BoxFit.contain,
                  color: const Color(0xff981375),
                ),
              ),
              title: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: Text(
                  "Vendors",
                  style: TextStyle(
                    color: Color(0xff6B0D52),
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/search.png",
                    width: 50,
                    height: 80,
                    fit: BoxFit.contain,
                    color: const Color(0xff981375),
                  ),
                ),
              ],
              toolbarHeight: 40, // Change this to adjust the height
            ),
            const Divider(
              color: Colors.grey,
            ),
            Expanded( // Add Expanded to take the remaining space
              child: SingleChildScrollView( // Wrap with SingleChildScrollView
                child: Column(
                  children: [
                    VendorsCellView(
                        title: "Venues",
                        icon: "assets/images/Venues.png",
                        detail: "Laws/Farmhouse,Banquet Halls,Resorts,Small Function Hall,Destination Wedding Halls",
                        onPressed: (){
                          Get.to(() => const VenuesView());
                        }
                    ),
                    VendorsCellView(
                        title: "Photographer",
                        icon: "assets/images/Photographer.png",
                        detail: "Pre-Wedding Shoots, Photographer, Videographer",
                        onPressed: (){
                          Get.to(() => const PhotographerView());
                        }
                    ),
                    VendorsCellView(
                        title: "Makeups",
                        icon: "assets/images/Makeups.png",
                        detail: "Pre-Wedding Shoots, Photographer, Videographer",
                        onPressed: (){
                          Get.to(() => const MakeupView());
                        }
                    ),
                    VendorsCellView(
                        title: "Catering",
                        icon: "assets/images/Catering.png",
                        detail: "Catering Services,Food Stalls,Bartenders, Home Catering,Cake",
                        onPressed: (){
                          Get.to(() => const CateringView());
                        }
                    ),
                    VendorsCellView(
                        title: "Groom wear",
                        icon: "assets/images/Groom_Wear.png",
                        detail: "From all the insights collected from the usability study.",
                        onPressed: (){
                          Get.to(() => const GroomWearView());
                        }
                    ),
                    VendorsCellView(
                        title: "Bridal wear",
                        icon: "assets/images/Bridal_Wears.png",
                        detail: "From all the insights collected from the usability study.",
                        onPressed: (){
                          Get.to(() => const BridalWearView());
                        }
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
