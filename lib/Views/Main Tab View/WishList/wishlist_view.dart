import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../model/splash_view_model.dart';

class WishlistView extends StatefulWidget {
  const WishlistView({super.key});

  @override
  State<WishlistView> createState() => _WishlistViewState();
}

class _WishlistViewState extends State<WishlistView> {

  int listCount = 0;

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
                "Wishlists",
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
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
                  borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/flower.png",
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Data",
                                style: TextStyle(
                                  color: Color(0xff981375),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30
                                ),
                              ),
                              Text(
                                "Syncing files to device A ",
                                style: TextStyle(
                                    color: const Color(0xff981375).withOpacity(0.8),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){},
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all( // Border.all creates a border with the specified width and color
                                color: Colors.black.withOpacity(0.3), // Choose your border color
                                width: 3.0, // Choose your border width
                              ),
                            ),
                            height: 50,
                            child: Center(
                              child: Text(
                                  "Remove",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black.withOpacity(0.8),
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){},
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all( // Border.all creates a border with the specified width and color
                                color: Colors.black.withOpacity(0.3), // Choose your border color
                                width: 3.0, // Choose your border width
                              ),
                            ),
                            height: 50,
                            child: Center(
                              child: Text(
                                "Contact",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black.withOpacity(0.8),
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Expanded(
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //       border: Border.all( // Border.all creates a border with the specified width and color
                      //         color: Colors.black.withOpacity(0.3), // Choose your border color
                      //         width: 3.0, // Choose your border width
                      //       ),
                      //     ),
                      //     height: 50,
                      //     child: Center(
                      //       child: Text(
                      //           "",
                      //         style: TextStyle(
                      //             fontSize: 15,
                      //             color: Colors.black.withOpacity(0.8),
                      //             fontWeight: FontWeight.w500
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  )
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
