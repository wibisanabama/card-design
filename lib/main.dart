import 'package:card_design/awan_card.dart';
import 'package:card_design/food_card.dart';
import 'package:card_design/lorem_card.dart';
import 'package:card_design/menu_card.dart';
import 'package:card_design/title_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CardDesign(),
                    SizedBox(width: 5),
                    FoodCard(),
                    SizedBox(width: 5),
                    LoremCard(),
                    SizedBox(width: 5),
                    AwanCard(),
                    SizedBox(width: 5),
                    TitleCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}