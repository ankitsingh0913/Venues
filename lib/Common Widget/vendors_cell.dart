import 'package:flutter/material.dart';

class VendorsCellView extends StatelessWidget {
  final String title;
  final String icon;
  final String detail;
  final VoidCallback onPressed;
  const VendorsCellView({
    super.key,
    required this.title,
    required this.icon,
    required this.detail,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.pink.withOpacity(0.15),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 6,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes the position of the shadow
            ),
          ],
        ),
        margin: const EdgeInsets.only(left: 20,right: 20,top: 20),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    icon,
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  )
              ),
            ),
            const SizedBox(width: 5),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6B0D52),
                    ),
                  ),
                  Text(
                    detail, // Add your subtitle text here
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600]
                    ),
                  ),
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
