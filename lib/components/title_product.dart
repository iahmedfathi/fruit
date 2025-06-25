import 'package:flutter/material.dart';
import 'package:fruit/components/colors.dart';

class TitleProduct extends StatelessWidget {
  const TitleProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Fruits",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
          Text("See all",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: AppColors.primary)),
        ],
      ),
    );
  }
}