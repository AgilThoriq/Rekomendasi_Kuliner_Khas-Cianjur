import 'package:aslab_travel/models/dashboard.dart';
import 'package:aslab_travel/models/drink.dart';
import 'package:aslab_travel/screens/detail_popular.dart';
import 'package:aslab_travel/screens/detail_drink.dart';
import 'package:aslab_travel/screens/favorite_drink_screen.dart';
import 'package:aslab_travel/utils/const.dart';
import 'package:aslab_travel/widgets/favorite_drink_card.dart';
import 'package:aslab_travel/widgets/popular_destination.dart';
import 'package:aslab_travel/widgets/rekomendasi_popular.dart';
import 'package:aslab_travel/widgets/rekomendasi_drink_card.dart';
import 'package:flutter/material.dart';

class FavoriteDrinkScreen extends StatefulWidget {
  const FavoriteDrinkScreen({super.key});

  @override
  State<FavoriteDrinkScreen> createState() => _FavoriteDrinkScreenState();
}

class _FavoriteDrinkScreenState extends State<FavoriteDrinkScreen> {
  int selectedPage = 0;

  List<Drink> popular = listDrinks
      .where((element) => element.category == "favorite")
      .toList();
  
  List<Drink> rekomendasi = listDrinks
      .where((element) => element.category == "rekomendasi")
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: const Text('Menu Minuman'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // Popular Drink Section
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Minuman Populer Khas Cianjur',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: popular.length, // Corrected to use 'popular'
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            // Navigate to the detail page when a drink is selected
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailDrinkScreen(
                                  destination: popular[index],
                                ),
                              ),
                            );
                          },
                          child: PopularDrink(destination: popular[index]),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            // Recommended Drinks Section
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rekomendasi Untuk Kamu",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: List.generate(
                  rekomendasi.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => DetailDrinkScreen(
                                  destination: rekomendasi[index])
                                  ),
                                  );
                      },
                      child: RekomendasiDrink(
                        destination: rekomendasi[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
         ],
        ),
      ),
    );
  }
}
