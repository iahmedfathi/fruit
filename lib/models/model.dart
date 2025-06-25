class CategoryModel {
  final String name;
  final String image;

  CategoryModel({required this.name ,required this.image});
   static List<CategoryModel> category = [
    CategoryModel(
        name: 'Fruits',
        image: "assets/category/fruits.png",
    ),
    CategoryModel(
      name: 'Milk & Egg',
      image: "assets/category/egg.png",
    ),
    CategoryModel(
      name: 'Bavergas',
      image: "assets/category/bavergas.png",
    ),
    CategoryModel(
      name: 'luandry',
      image: "assets/category/luandry.png",
    ),
    CategoryModel(
      name: 'luandry',
      image: "assets/category/luandry.png",
    ),
  ];
}


class ProductModel {
  final String name;
  final String image;
  final String price;
  final String rate;
  final String rateCount;

  ProductModel({
    required this.name,
    required this.image,
    required this.price,
    required this.rate,
    required this.rateCount,
  });
  static  List<ProductModel> product = [
    ProductModel(
        name: "Banana",
        image: "assets/fruits/banana.png",
        price: "3.99",
        rate: "4",
        rateCount: "287",
    ),
    ProductModel(
      name: "Papper",
      image: "assets/fruits/papper.png",
      price: "2.99",
      rate: "4",
      rateCount: "287",
    ),
    ProductModel(
      name: "Orange",
      image: "assets/fruits/orange.png",
      price: "1.99",
      rate: "4",
      rateCount: "287",
    ),
    ProductModel(
      name: "Egg",
      image: "assets/category/egg.png",
      price: "1.99",
      rate: "4",
      rateCount: "287",
    ),
  ];
  
}