import 'package:flutter/material.dart';

class MenuScreenPage extends StatelessWidget {
  const MenuScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
                Color(0xfff6f6f6),
                Color(0xffd5c28f), // Ending color
            ],
          )
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(color: Color(0xfff6f6f6)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                              "assets/images/flower.png",
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          )
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Name",
                                style: TextStyle(
                                  fontSize: 27,
                                  color: Color(0xff6B0D52),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "emailId@gmai.com",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: const Color(0xff6B0D52).withOpacity(0.8),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,bottom: 8),
                  child: Container(
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
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
                    child: ListTile(
                      leading: const Icon(
                        Icons.home_outlined,
                        size: 30,
                        color: Color(0xff981375),
                      ),
                      title: Text(
                        "Home",
                        style: TextStyle(
                          color: const Color(0xff981375).withOpacity(1),
                          fontWeight: FontWeight.w600,
                          fontSize: 25
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,bottom: 8),
                  child: Container(
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
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
                    child: ListTile(
                      leading: const Icon(
                        Icons.home_outlined,
                        size: 30,
                        color: Color(0xff981375),
                      ),
                      title: Text(
                        "Home",
                        style: TextStyle(
                            color: const Color(0xff981375).withOpacity(1),
                            fontWeight: FontWeight.w600,
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,bottom: 8),
                  child: Container(
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
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
                    child: ListTile(
                      leading: const Icon(
                        Icons.home_outlined,
                        size: 30,
                        color: Color(0xff981375),
                      ),
                      title: Text(
                        "Home",
                        style: TextStyle(
                            color: const Color(0xff981375).withOpacity(1),
                            fontWeight: FontWeight.w600,
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,bottom: 8),
                  child: Container(
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
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
                    child: ListTile(
                      leading: const Icon(
                        Icons.home_outlined,
                        size: 30,
                        color: Color(0xff981375),
                      ),
                      title: Text(
                        "Home",
                        style: TextStyle(
                            color: const Color(0xff981375).withOpacity(1),
                            fontWeight: FontWeight.w600,
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,bottom: 8),
                  child: Container(
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
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
                    child: ListTile(
                      leading: const Icon(
                        Icons.home_outlined,
                        size: 30,
                        color: Color(0xff981375),
                      ),
                      title: Text(
                        "Home",
                        style: TextStyle(
                            color: const Color(0xff981375).withOpacity(1),
                            fontWeight: FontWeight.w600,
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,bottom: 8),
                  child: Container(
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
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
                    child: ListTile(
                      leading: const Icon(
                        Icons.home_outlined,
                        size: 30,
                        color: Color(0xff981375),
                      ),
                      title: Text(
                        "Home",
                        style: TextStyle(
                            color: const Color(0xff981375).withOpacity(1),
                            fontWeight: FontWeight.w600,
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
