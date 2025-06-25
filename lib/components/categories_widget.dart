import 'package:flutter/material.dart';
import 'package:fruit/models/model.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(CategoryModel.category.length, (index) {
          final category=CategoryModel.category[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.circle
                  ),
                  width: 70,
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(category.image,width: 60),
                  ),
                ),
                SizedBox(height: 15),
                Text(category.name,style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          );
        }),
      ),
    );
  }
}