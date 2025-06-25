import 'package:flutter/material.dart';

import 'package:fruit/components/banners_widget.dart';
import 'package:fruit/components/build_app_bar.dart';
import 'package:fruit/components/cart_widget.dart';
import 'package:fruit/components/categories_widget.dart';

import 'package:fruit/components/title_product.dart';
import 'package:fruit/models/model.dart';
import 'package:fruit/components/product_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> items = [
    "assets/banners/Slider 1.png",
    "assets/banners/Slider 2.png",
    "assets/banners/Slider 3.png",
  ];

  List<ProductModel> basketList = [];

  void toggleSelection(ProductModel product) {
    setState(() {
      if (basketList.contains(product)) {
        basketList.remove(product);
      } else {
        basketList.add(product);
      }
    });
  }

  bool isSelected(ProductModel product) => basketList.contains(product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BannersWidget(items: items),
            CategoriesWidget(),
            SizedBox(height: 20),
            TitleProduct(),
            SizedBox(height: 20),

            /// products
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: List.generate(ProductModel.product.length, (index) {
                    final item = ProductModel.product[index];
                    return ProductItem(
                      image: item.image,
                      name: item.name,
                      rate: item.rate,
                      rateCount: item.rateCount,
                      price: item.price,
                      onTap: () => toggleSelection(item),
                      icon:
                          isSelected(item)
                              ? const Icon(Icons.close)
                              : const Icon(Icons.add),
                    );
                  }),
                ),
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),

      /// bottom navigation bar
      bottomNavigationBar:
          basketList.isEmpty ? null : CartBottomWidget(basketList: basketList),
    );
  }
}
