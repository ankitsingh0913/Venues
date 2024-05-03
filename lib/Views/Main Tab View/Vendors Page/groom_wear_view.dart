import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weddingapp/Common%20Widget/preview_cell.dart';
import 'package:weddingapp/Views/Main%20Tab%20View/Vendors%20Page/vendors_view.dart';

import '../../../model/itemlist.dart';
import '../../../model/venues_model.dart';

class GroomWearView extends StatefulWidget {
  const GroomWearView({Key? key}) : super(key: key);

  @override
  State<GroomWearView> createState() => _GroomWearViewState();
}

class _GroomWearViewState extends State<GroomWearView> {
  bool _isSearchBarFocused = false;
  late TextEditingController _searchController;

  final List<Map<String, dynamic>> ImageList  = [
    {"id": 1,"image_path": 'assets/images/Groom1.png'},
    {"id": 2,"image_path": 'assets/images/Groom2.png'},
    {"id": 3,"image_path": 'assets/images/Groom3.png'},
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Image.asset(
                "assets/images/arrow.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
                color: const Color(0xff981375),
              ),
            ),
            title: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "Groom Wears",
                style: TextStyle(
                  color: Color(0xff6B0D52),
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            toolbarHeight: 40, // Change this to adjust the height
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  // Get.back();
                },
                icon: Image.asset(
                  "assets/images/filter.png",
                  width: 30,
                  height: 30,
                  fit: BoxFit.contain,
                  color: const Color(0xff981375),
                ),
              ),
              Expanded(
                child: Container(
                  height: 38,
                  decoration: BoxDecoration(
                      color: Colors.pink.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(19)),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20),
                      prefixIcon: Container(
                        margin: const EdgeInsets.only(left: 20),
                        alignment: Alignment.centerLeft,
                        width: 30,
                        child: Image.asset(
                          "assets/images/search.png",
                          width: 20,
                          height: 20,
                          fit: BoxFit.contain,
                          // color: TColor.primaryText28,
                        ),
                      ),
                      hintText: _isSearchBarFocused ? '' : "Search...",
                      hintStyle: const TextStyle(
                        // color: TColor.primaryText28,
                        fontSize: 15,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _isSearchBarFocused = true;
                      });
                    },
                    onChanged: (value) {
                      if (value.isEmpty) {
                        setState(() {
                          _isSearchBarFocused = false;
                        });
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 250,
                    margin: const EdgeInsets.only(left: 10,right: 10),
                    child: Stack(
                      children: [
                        CarouselSlider(
                          items: ImageList
                              .map(
                                  (item) => Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.grey.withOpacity(0.2)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        item["image_path"],
                                        fit: BoxFit.contain,
                                        width: double.infinity,
                                      ),
                                    ),
                                  )
                          ).toList(),
                          carouselController: carouselController,
                          options: CarouselOptions(
                              scrollPhysics: const BouncingScrollPhysics(),
                              autoPlay: true,
                              aspectRatio: 1.5,
                              viewportFraction: 1,
                              onPageChanged: (index,reason){
                                setState(() {
                                  currentIndex = index;
                                });
                              }
                          ),

                        ),
                        Positioned(
                            bottom: 10,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: ImageList.asMap().entries.map((entry) {
                                // print(entry);
                                // print(entry.key);
                                return GestureDetector(
                                  onTap: () => carouselController.animateToPage(entry.key),
                                  child: Container(
                                    width: currentIndex == entry.key ? 17 :7,
                                    height: 7.0,
                                    margin: const EdgeInsets.symmetric(horizontal: 3.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: currentIndex == entry.key ? const Color(0xffbb4483): const Color(0xffAA6F73),
                                    ),
                                  ),
                                );
                              }).toList(),
                            )
                        )
                      ],
                    ),
                  ),
                  GridView.builder(
                    itemCount: venuesList.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(16),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      mainAxisExtent: 240,
                    ),
                    itemBuilder: (context, index) {
                      VenuesModel venues = venuesList[index];
                      return PreviewCell(
                          image: venues.image,
                          title: venues.name,
                          subtitle: venues.subtitle,
                          rating: '',
                          views: '',
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
