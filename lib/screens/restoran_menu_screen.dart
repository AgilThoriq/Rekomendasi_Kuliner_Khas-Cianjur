import 'package:aslab_travel/models/dashboard.dart';
import 'package:aslab_travel/models/food.dart';
import 'package:aslab_travel/screens/detail_popular.dart';
import 'package:aslab_travel/screens/detail_food.dart';
import 'package:aslab_travel/utils/const.dart';
import 'package:aslab_travel/widgets/popular_destination.dart';
import 'package:aslab_travel/widgets/popular_food.dart';
import 'package:aslab_travel/widgets/rekomendasi_popular.dart';
import 'package:aslab_travel/widgets/rekomendasi_food.dart';
import 'package:flutter/material.dart';

class RestaurantMenuScreen extends StatefulWidget {
  const RestaurantMenuScreen({super.key});

  @override
  State<RestaurantMenuScreen> createState() => _RestaurantMenuScreenState();
}

class _RestaurantMenuScreenState extends State<RestaurantMenuScreen> {
  int selectedPage = 0;

  // Data destinasi populer
  List<Food> popular = listFoods
      .where((element) => element.category == "favorite")
      .toList();

  // Data rekomendasi destinasi
  List<Food> rekomendasi = listFoods
      .where((element) => element.category == "rekomendasi")
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: const Text('Menu Makanan'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // Popular Destinations Section
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Makanan Populer Khas Cianjur',
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
                      itemCount: popular.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            // Navigasi ke halaman detail destinasi ketika diklik
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailRestoScreen(
                                  destination: popular[index],
                                ),
                              ),
                            );
                          },
                          child: PopularFood(destination: popular[index]),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            // Recommended Destinations Section
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
                      color: Colors.black,
                    ),
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
                          // Navigasi ke halaman detail destinasi ketika diklik
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => DetailRestoScreen(
                                destination: rekomendasi[index],
                              ),
                            ),
                          );
                        },
                        child: RekomendasiFood(destination: rekomendasi[index]),
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
