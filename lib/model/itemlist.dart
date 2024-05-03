import 'package:get/get.dart';

class ItemlistsViewModel extends GetxController {
  final List<Map<String, dynamic>> ItemlistArr = [
    {
      "image":"assets/images/Venues.png",
      "name":"Venues",
      // "songs":"100 Songs"
    },
    {
      "image": "assets/images/Catering.png",
      "name": "Catering",
      // "songs": "323 Songs"
    },
    {
      "image": "assets/images/Photographer.png",
      "name": "Photographer",
      // "songs": "450 Songs"
    },
    {
      "image": "assets/images/Decoration.png",
      "name": "Decoration",
      // "songs": "966 Songs"
    }
  ].obs;

  final List<Map<String, dynamic>> DetaillistArr = [
    {
      "image": "assets/images/CheckList.png",
      "name": "Checklist"
    },
    {
      "image": "assets/images/GuestList.png",
      "name": "GuestList"
    },
    {
      "image": "assets/images/Invitation.png",
      "name": "Invitation"
    },
    {
      "image": "assets/images/Budget.png",
      "name": "Budget"
    }
  ].obs;

}