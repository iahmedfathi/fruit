import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit/components/colors.dart';
import 'package:fruit/models/model.dart';

class CartBottomWidget extends StatelessWidget {
  const CartBottomWidget({super.key, required this.basketList});

  final List<ProductModel> basketList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 77,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              SizedBox(
                height: 50,
                width: 170,
                child: ListView.builder(
                  itemCount: basketList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Image.asset(
                            basketList[index].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(width: 10),
              Container(width: 2, height: 40, color: Colors.white),
              const SizedBox(width: 10),

              Expanded(
                child: Text(
                  "View Basket",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),

              SizedBox(
                width: 28,
                height: 28,
                child: Badge(
                  backgroundColor: Colors.red,
                  label: Text(
                    basketList.length.toString(),
                    style: const TextStyle(fontSize: 11),
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/basket.svg",
                    width: 20,
                    height: 20,
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcATop,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
