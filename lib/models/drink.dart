import 'dart:math';

import 'package:flutter/material.dart';

Random random = Random();

// Lokasi atau kategori untuk minuman
const location = "Minuman Favorit Cianjur";

class Drink {
  final int id, price, review;
  final List<String>? image;
  final String name, description, category, location;
  final double rate;

  Drink({
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.location,
    required this.review,
    required this.price,
    required this.description,
    required this.rate,
  });
}

// Daftar minuman favorit
List<Drink> listDrinks = [
  // Minuman Favorit
  Drink(
    id: 1,
    name: "Bandrek Cianjur",
    category: 'favorite',
    image: [
      "https://static.wixstatic.com/media/d73e12_65f06237c9e042b18a6877612b757e44~mv2.jpg/v1/fill/w_980,h_653,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/d73e12_65f06237c9e042b18a6877612b757e44~mv2.jpg"
    ],
    location: location,
    review: random.nextInt(150) + 10,
    price: 10,
    description: "andrek adalah minuman hangat yang terbuat dari jahe, gula merah, dan berbagai rempah seperti kayu manis dan cengkeh.",
    rate: 4.7,
  ),
  Drink(
    id: 2,
    name: "Es Cendol Cianjur",
    category: 'favorite',
    image: [
      "https://tse1.mm.bing.net/th?id=OIP.-W0z5XXEqfiR7AQOvzFMbQHaHa&pid=Api&P=0&h=180"
    ],
    location: location,
    review: random.nextInt(100) + 5,
    price: 7,
    description: "Es cendol dari Cianjur mirip dengan es cendol pada umumnya, tetapi menggunakan bahan-bahan khas lokal seperti santan segar, gula aren asli Cianjur, dan cendol dari tepung beras. Rasanya manis, gurih, dan menyegarkan.",
    rate: 4.5,
  ),
  Drink(
    id: 3,
    name: "Sekoteng",
    category: 'favorite',
    image: [
      "https://cdn.idntimes.com/content-images/community/2022/10/131947853-1060107821121673-5560354678092603041-n-photoroom-f86cce9f67ab87e1f2714ff01fb5315e-19b86b3ded0016935aeef97d3e09754f.jpg"
    ],
    location: location,
    review: random.nextInt(120) + 15,
    price: 10,
    description: "Sekoteng adalah minuman hangat yang biasanya disajikan malam hari. Bahan utamanya adalah jahe yang direbus dengan gula dan ditambah kacang hijau, pacar cina, potongan roti, dan kacang tanah.",
    rate: 4.9,
  ),
  Drink(
    id: 4,
    name: "Goyobod",
    category: 'favorite',
    image: [
      "https://cdn.idntimes.com/content-images/community/2021/04/ranezkitchen-20210415-180740-009b21ba4282a7bf825c8b51efbf2145-d1c9cc1a854e3ea29c29a5d1e6f32266.jpg"
    ],
    location: location,
    review: random.nextInt(180) + 20,
    price: 5,
    description: "Goyobod adalah minuman tradisional khas Sunda yang populer di Cianjur. Minuman ini terbuat dari campuran tepung hunkwe yang disajikan dengan es serut, santan, dan gula merah cair.",
    rate: 4.6,
  ),
  // Minuman Rekomendasi
  Drink(
    id: 5,
    name: "Es Teler",
    category: 'rekomendasi',
    image: [
      "https://pict-a.sindonews.net/dyn/850/pena/news/2023/03/29/185/1059217/resep-es-teler-alpukat-nangka-takjil-segar-untuk-buka-puasa-ccp.jpg"
    ],
    location: location,
    review: random.nextInt(80) + 10,
    price: 15,
    description: "Minuman manis yang terbuat dari campuran kelapa muda, alpukat, nangka, dan durian, dicampur dengan susu kental manis dan es serut. Es teler memiliki rasa manis yang kaya dan tekstur lembut dari alpukat dan kelapa muda",
    rate: 4.8,
  ),
  Drink(
    id: 6,
    name: "Bajigur ",
    category: 'rekomendasi',
    image: [
      "https://asset.kompas.com/crops/NwjTDQ2A5YgdlFNkE7HQ1VF5PNs=/111x83:735x499/750x500/data/photo/2020/03/28/5e7eb826a19c9.jpg"
    ],
    location: location,
    review: random.nextInt(110) + 15,
    price: 10,
    description: "Bajigur adalah minuman tradisional yang terbuat dari santan, gula merah, jahe, dan sedikit garam. Minuman ini memiliki rasa manis, gurih, dan sedikit pedas, cocok untuk menghangatkan tubuh di cuaca dingin.",
    rate: 4.7,
  ),
  Drink(
    id: 7,
    name: "Es Kelapa Muda",
    category: 'rekomendasi',
    image: [
      "https://tse3.mm.bing.net/th?id=OIP.h0yqjtkQ0DqaCvvTOD1OYAHaE8&pid=Api&P=0&h=180"
    ],
    location: location,
    review: random.nextInt(90) + 8,
    price: 17,
    description: "Minuman segar yang terbuat dari air kelapa muda yang langsung diambil dari kelapa. Minuman ini sangat menyegarkan dan alami, terutama di cuaca panas. Daging kelapa muda yang kenyal juga sering dimakan langsung sebagai pelengkap..",
    rate: 4.6,
  ),
  Drink(
    id: 8,
    name: "Teh Tarik",
    category: 'rekomendasi',
    image: [
      "https://tse3.mm.bing.net/th?id=OIP.n1VUBYPonE-QD7ZWkRNCBgHaE8&pid=Api&P=0&h=180"
    ],
    location: location,
    review: random.nextInt(130) + 10,
    price: 13,
    description: "Teh tarik khas Cianjur dengan rasa teh manis yang kental dan tekstur yang lembut.",
    rate: 4.7,
  ),
  Drink(
    id: 9,
    name: "Aneka Jus",
    category: 'rekomendasi',
    image: [
      "https://i0.wp.com/i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/31545228-f3b5-4d7c-af04-cf1e6dabfe45_Go-Biz_20210804_150745.jpeg"
    ],
    location: location,
    review: random.nextInt(150) + 10,
    price: 14,
    description: "Macam macam jus yang ada di cianjur",
    rate: 4.8,
  ),
];
