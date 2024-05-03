import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weddingapp/model/photography_model.dart';

import '../../../Common Widget/preview2_view.dart';
import '../../../Common Widget/preview_cell.dart';
import '../../../model/venues_model.dart';
import 'vendors_view.dart';

class PhotographerView extends StatefulWidget {
  const PhotographerView({super.key});

  @override
  State<PhotographerView> createState() => _PhotographerViewState();
}

class _PhotographerViewState extends State<PhotographerView> {
  bool _isSearchBarFocused = false;
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
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                "Photography",
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
              child: ListView.builder(
                itemCount: photosList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(16),
                itemBuilder: (context, index) {
                  PhotographyModel venues = photosList[index];
                  return Preview2Cell(
                    image: venues.image,
                    title: venues.name,
                    subtitle: venues.subtitle,
                    onPressed: () {

                    },
                    rating: '4.5',
                    views: '6521',
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
