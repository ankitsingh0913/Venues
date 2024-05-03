import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  late final int categoryId;
  late final String name;
  late final IconData icon;

  Category({required this.categoryId, required this.name, required this.icon});
}

final allCategory = Category(
  categoryId: 0,
  name: "All",
  icon: Icons.search,
);

final musicCategory = Category(
  categoryId: 1,
  name: "Birthday",
  icon: Icons.music_note,
);

final meetUpCategory = Category(
  categoryId: 2,
  name: "Anniversary",
  icon: Icons.location_on,
);

final golfCategory = Category(
  categoryId: 3,
  name: "Weddings",
  icon: Icons.golf_course,
);

final birthdayCategory = Category(
  categoryId: 4,
  name: "Makeups",
  icon: Icons.cake,
);

final categories = [
  allCategory,
  musicCategory,
  meetUpCategory,
  golfCategory,
  birthdayCategory,
];