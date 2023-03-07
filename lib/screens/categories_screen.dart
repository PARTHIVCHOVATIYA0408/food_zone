import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Map item = {
    //------Categories Screen All Data------------------
    "Categories": [
      {
        "image": "assets/images/Fruits1.jpg",
        "name": "Fruits",
      },
      {
        "image": "assets/images/Vagetables.jpg",
        "name": "Vegetables",
      },
      {
        "image": "assets/images/Condiments.png",
        "name": "Condiments &...",
      },
      {
        "image": "assets/images/personalCare.png",
        "name": "Personal Care",
      },
      {
        "image": "assets/images/Beverages.jpg",
        "name": "Beverage",
      },
      {
        "image": "assets/images/DairyProducts.jpg",
        "name": "Dairy Products",
      },
      {
        "image": "assets/images/Meat.jpeg",
        "name": "Meet",
      },
      {
        "image": "assets/images/Snacks1.jpg",
        "name": "Snacks",
      },
      {
        "image": "assets/images/Bread&Bakery.jpeg",
        "name": "Bread & Bakery",
      },
      {
        "image": "assets/images/Cleaning&Supplies.jpg",
        "name": "Cleaning Supplies",
      },
    ],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          'Categories',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
        ),
        //------Categories Screen All Data Pass------------------
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 30,
          ),
          itemCount: item['Categories'].length,
          itemBuilder: (BuildContext ctx, index) {
            return Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "${item['Categories'][index]["image"]}",
                          ),
                        ),
                      ),
                    ),
                    Text(
                      item['Categories'][index]["name"],
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
