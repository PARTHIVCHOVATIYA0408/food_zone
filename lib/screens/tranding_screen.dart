import 'package:flutter/material.dart';

class TrandingScreen extends StatefulWidget {
  const TrandingScreen({super.key});

  @override
  State<TrandingScreen> createState() => _TrandingScreenState();
}

class _TrandingScreenState extends State<TrandingScreen> {
  Map item = {
    "product": [
      {
        "image": "assets/images/oreo 1.jpg",
        // "icon":"",
        "name": "Bread & Backery",
        "subtitle": "cadbury oreo origin",
        "price": "\$ 20.00",
        "vegIcon": "assets/images/100%_Logo.png",
        "button": "ADD",
      },
      {
        "image": "assets/images/Thums Up 1.jpg",
        // "icon":"",
        "name": "Beverages",
        "subtitle": "Thums Up Soda",
        "price": "\$ 50.00",
        "vegIcon": "assets/images/100%_Logo.png",
        "button": "ADD",
      },
      {
        "image": "assets/images/Amul 1.jpg",
        // "icon":"",
        "name": "Dairy Products",
        "subtitle": "Amul Pasteurised Buter",
        "price": "\$ 70.00",
        "vegIcon": "assets/images/100%_Logo.png",
        "button": "ADD",
      },
      {
        "image": "assets/images/Coconut.png",
        // "icon":"",
        "name": "Fruits",
        "subtitle": "Tender Coconut",
        "price": "\$ 20.00",
        "vegIcon": "assets/images/100%_Logo.png",
        "button": "ADD",
      },
      {
        "image": "assets/images/blackberry.jpeg",
        // "icon":"",
        "name": "BlackBerry",
        "subtitle": "cadbury oreo origin",
        "price": "\$ 20.00",
        "vegIcon": "assets/images/100%_Logo.png",
        "button": "ADD",
      },
      {
        "image": "assets/images/apple.jpeg",
        // "icon":"",
        "name": "Bread & Backery",
        "subtitle": "cadbury oreo origin",
        "price": "\$ 20.00",
        "vegIcon": "assets/images/100%_Logo.png",
        "button": "ADD",
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
        actions: const [
          Icon(
            Icons.filter_alt_outlined,
            color: Colors.black,
          ),
        ],
        centerTitle: true,
        title: const Text(
          'Trending',
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
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            mainAxisExtent: 250,
          ),
          itemCount: item['product'].length,
          itemBuilder: (BuildContext ctx, index) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 3,
                      top: 2,
                      right: 5,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "${item['product'][index]["image"]}",
                          height: 150,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item['product'][index]["name"],
                              style: const TextStyle(color: Colors.green),
                            ),
                            Image.asset(
                              "${item['product'][index]["vegIcon"]}",
                              height: 15,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              item['product'][index]["subtitle"],
                              style: const TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item['product'][index]["price"],
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                item['product'][index]["button"],
                                style: const TextStyle(color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(156, 158, 158, 158),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.bookmark_border_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
