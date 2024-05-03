import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weddingapp/Common%20Widget/detailed_view.dart';

class Preview2Cell extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String rating;
  final String views;
  final VoidCallback onPressed;
  const Preview2Cell({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onPressed,
    required this.rating,
    required this.views
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(() => DetailsView(
          productName: title,
          productDescription: subtitle,
          productPrice: 500,
          productImage: image,
          rating: rating,
          views: views,
        ));
      },
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.infinity,
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
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                              Text(
                                subtitle,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white.withOpacity(0.8),
                                    fontWeight: FontWeight.w600,
                                    overflow: TextOverflow.fade
                                ),
                              )
                            ],
                          ),
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
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: onPressed,
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.pink.shade300
                ),
                child: const Center(
                  child: Text(
                    "Know More",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15,)
          ],
        ),
      ),
    );
  }
}
