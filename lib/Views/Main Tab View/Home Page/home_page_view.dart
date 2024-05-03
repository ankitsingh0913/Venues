import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:weddingapp/model/itemlist.dart';

import '../../../model/splash_view_model.dart';

class HomeTabView extends StatefulWidget {
  const HomeTabView({super.key});

  @override
  State<HomeTabView> createState() => _HomeTabViewState();
}

class _HomeTabViewState extends State<HomeTabView> with SingleTickerProviderStateMixin{

  TabController? controller;
  int selectTab = 0;

  late TextEditingController _searchController;
  bool _isSearchBarFocused = false;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
    _searchController = TextEditingController();

    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {

      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  final List<Map<String, dynamic>> ImageList  = [
    {"id": 1,"image_path": 'assets/images/weddingphoto.png'},
    {"id": 2,"image_path": 'assets/images/BirthdayPhoto.png'},
    {"id": 3,"image_path": 'assets/images/AnniversaryPhoto.png'},
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  final itemVM = Get.put(ItemlistsViewModel());
  final detailVM = Get.put(ItemlistsViewModel());
  late final Map mObj;
  late final Map dObj;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          CarouselSlider(
                            items: ImageList
                                .map(
                                  (item) => Image.asset(
                                    item["image_path"],
                                    fit: BoxFit.cover,
                                    width: double.infinity,
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
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    leading:
                    IconButton(
                      onPressed: (){
                        //Get.find<SplashViewMode>().openDrawer();
                        ZoomDrawer.of(context)?.toggle();
                      },
                      icon: Image.asset(
                        "assets/images/menu.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.contain,
                        color: const Color(0xffffffff),
                      ),
                    ),
                    title: Container(
                      height: 38,
                      decoration: BoxDecoration(
                        color: const Color(0xffd5c28f).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        // controller: homeVM.txtSearch.value,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
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
                          hintText: _isSearchBarFocused ? '':"Search...",
                          hintStyle: const TextStyle(
                            // color: TColor.primaryText28,
                            fontSize: 15,
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            _isSearchBarFocused = true;
                          });
                        },
                        onChanged: (value){
                          if(value.isEmpty){
                            setState(() {
                              _isSearchBarFocused = false;
                            });
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.white,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              height: 125,
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 10,),
                  scrollDirection: Axis.horizontal,
                  itemCount: itemVM.ItemlistArr.length,
                  itemBuilder: (context,index){
                    var mObj = itemVM.ItemlistArr[index];
                    return Container(
                      width: 110,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: InkWell(
                        onTap: (){

                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(9),
                                child: Image.asset(mObj["image"],width: double.maxFinite,height: 90,fit: BoxFit.cover,)),
                            const SizedBox(height: 5,),
                            Text(
                              mObj["name"],
                              maxLines: 1,
                              style: const TextStyle(
                                color: Color(0xff6B0D52),
                                fontSize: 15,
                                fontFamily: 'Schuyler',
                                fontWeight: FontWeight.w700,),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.5),
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 165,
                  height: 252,
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 6,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes the position of the shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(6)
                  ),
                  margin: const  EdgeInsets.all(15.0),
                  child: const Column(
                    children: [
                      Text(
                        "CheckList",
                        style: TextStyle(
                          color: Color(0xff6B0D52),
                          fontSize: 20,
                          fontFamily: 'Schuyler',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0,left: 8,right: 8,bottom: 8),
                        child: Image(
                          height: 200,
                          image: AssetImage('assets/images/CheckList.png',), // Replace 'assets/checklist_image.png' with your image path
                          // Adjust height as needed
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 165,
                  height: 252,
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 6,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes the position of the shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(6)
                  ),
                  margin: const  EdgeInsets.all(12.0),
                  child: const Column(
                    children: [
                      Text(
                        "GuestList",
                        style: TextStyle(
                          color: Color(0xff6B0D52),
                          fontSize: 20,
                          fontFamily: 'Schuyler',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8,right: 8,top: 8,bottom: 8),
                        child: Image(
                          height: 200,
                          image: AssetImage('assets/images/GuestList.png'), // Replace 'assets/checklist_image.png' with your image path
                          // Adjust height as needed
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 165,
                  height: 252,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 6,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes the position of the shadow
                    ),
                  ],
                    borderRadius: BorderRadius.circular(6)
                  ),
                  margin: const EdgeInsets.all(15.0),
                  child: const Column(
                    children: [
                      Text(
                        "Invitation",
                        style: TextStyle(
                          color: Color(0xff6B0D52),
                          fontSize: 20,
                          fontFamily: 'Schuyler',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0,right: 8,left: 8,bottom: 8),
                        child: Image(
                          height: 200,
                          image: AssetImage('assets/images/Invitation.png',), // Replace 'assets/checklist_image.png' with your image path
                          // Adjust height as needed
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 165,
                  height: 252,
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 6,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes the position of the shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(6)
                  ),
                  margin: const EdgeInsets.all(15.0),
                  child: const Column(
                    children: [
                      Text(
                        "Budget",
                        style: TextStyle(
                          color: Color(0xff6B0D52),
                          fontSize: 20,
                          fontFamily: 'Schuyler',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Image(
                        height: 200,
                        image: AssetImage('assets/images/Budget.png'), // Replace 'assets/checklist_image.png' with your image path
                        // Adjust height as needed
                      )
                    ],
                  ),
                )
              ],
            )
            // GridView.builder(
            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2,
            //       crossAxisSpacing: 15,
            //       mainAxisExtent: 15,
            //     ),
            //     itemBuilder: (context,index){
            //       var mObj = itemVM.DetaillistArr[index];
            //       return Container(
            //         width: 165,
            //         height: 252,
            //         decoration: BoxDecoration(
            //             color: Colors.white70,
            //             boxShadow: [
            //               BoxShadow(
            //                 color: Colors.grey.withOpacity(0.3),
            //                 spreadRadius: 6,
            //                 blurRadius: 7,
            //                 offset: const Offset(0, 3), // changes the position of the shadow
            //               ),
            //             ],
            //             borderRadius: BorderRadius.circular(6)
            //         ),
            //         margin: const EdgeInsets.all(15.0),
            //         child: Column(
            //           children: [
            //             Text(
            //               mObj["name"],
            //               maxLines: 1,
            //               style: const TextStyle(
            //                 color: Color(0xff6B0D52),
            //                 fontSize: 20,
            //                 fontFamily: 'Schuyler',
            //                 fontWeight: FontWeight.w700,
            //               ),
            //             ),
            //             Image(
            //               height: 200,
            //               image: AssetImage(mObj["image"]), // Replace 'assets/checklist_image.png' with your image path
            //               // Adjust height as needed
            //             )
            //           ],
            //         ),
            //       );
            //     }
            // )
          ],
        ),
      ),
    );
  }

}

