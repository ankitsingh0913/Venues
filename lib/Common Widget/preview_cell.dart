import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'detailed_view.dart';

class PreviewCell extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String rating;
  final String views;
  const PreviewCell({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.views,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() =>  DetailsView(
          productName: title,
          productDescription: subtitle,
          productPrice: 500,
          productImage: image,
          rating: rating,
          views: views,
        ));
      },
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  image,
                  width: 200,
                  height: 240,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  // right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withOpacity(0.0),
                              Colors.black.withOpacity(0.3),
                              Colors.black.withOpacity(0.9),
                            ]
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/wishlist.png",height: 25,width: 27,color: Colors.white,),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ConstrainedBox(
                              constraints: const BoxConstraints(
                                  maxWidth: 80,
                                  maxHeight: 40
                              ),
                              child: Text(
                                title.length > 10 ? '${title.substring(0, 10)}...' : title,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            ),
                            ConstrainedBox(
                              constraints: const BoxConstraints(
                                  maxWidth: 70,
                                  maxHeight: 40
                              ),
                              child: Text(
                                subtitle,
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white.withOpacity(0.8),
                                    fontWeight: FontWeight.w600,
                                    overflow: TextOverflow.fade
                                ),
                              ),
                            )
                          ],
                        ),
                        Center(
                          child: IconButton(
                              onPressed: (){},
                              icon: Image.asset("assets/images/cart.png",height: 27,width: 27,color: Colors.white,)),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
