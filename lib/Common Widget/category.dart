import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weddingapp/appstate.dart';
import 'categorymodel.dart';
import 'styleguide.dart';
class CategoryWidget extends StatelessWidget {
  final Category category;

  const CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final isSelected = appState.selectedCategoryId == category.categoryId;
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: const  EdgeInsets.symmetric(horizontal: 8),
        height: 10,
        width: 10,
        decoration: BoxDecoration(
          border: Border.all(color: isSelected ? Colors.white:const Color(0x99ffffff),width: 3),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color: isSelected? Colors.white:Colors.transparent,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(category.icon, color: isSelected?Theme.of(context).primaryColor:Colors.white, size: 10,),
            const SizedBox(height: 10,),
            Text(category.name,style: isSelected ? selectedCategoryTextStyle : categoryTextStyle,)
          ],
        ),
      ),
    );
  }
}
