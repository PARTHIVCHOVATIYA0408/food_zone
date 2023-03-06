import 'package:flutter/material.dart';

class TrandingCard extends StatelessWidget {
  const TrandingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 250,
        width: 160,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5, top: 2),
          child: Column(
            children: [
              Image.asset(
                'assets/images/oreo 1.jpg',
                fit: BoxFit.fill,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Bread & Bakry',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                  Image.asset(
                    'assets/images/100%_Logo.png',
                    height: 15,
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: const [
                  Text(
                    'Cadbury Oreo Origin...',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '\$20.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'ADD',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
