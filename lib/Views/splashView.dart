import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weddingapp/model/splash_view_model.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  final splashVM = Get.put( SplashViewMode() );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashVM.loadView();
  }

  @override
  Widget build(BuildContext context) {
    // var media = MediaQuery.sizeOf(context);
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xFF6B0D52),
            Color(0xFF981375)
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 200.0),
        child: Column(
          children: [
            Center(
                child: Image.asset(
                  "assets/images/BorderedLogo.png",
                  height: 350,
                  width: 350,
                )
            ),
          ],
        ),
      ),
    );
  }
}
