import 'dart:math';

Random random = Random();

// Lokasi atau kategori untuk makanan
const location = "Makanan Favorit Cianjur";

class Food {
  final int id, price, review;
  final List<String>? image;
  final String name, description, category, location;
  final double rate;

  Food({
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

// Daftar makanan favorit
List<Food> listFoods = [
  // Makanan Favorit
  Food(
    id: 1,
    name: "Nasi Liwet Cianjur",
    category: 'favorite',
    image: [
      "https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/28/nasi-liwet-2531034049.jpg"
    ],
    location: location,
    review: random.nextInt(150) + 10,
    price: 25,
    description: "Nasi liwet khas Cianjur dengan aroma khas dan lauk pauk lengkap.",
    rate: 4.7,
  ),
  Food(
    id: 2,
    name: "Sate Maranggi",
    category: 'favorite',
    image: [
      "https://cdn.idntimes.com/content-images/community/2022/07/sate-maranggi-gaafoodiary-e08c9dc5918acd4505a300b21f6394a3-4c2a38b989eb134a5cdc88ceebb16dbc.jpg"
    ],
    location: location,
    review: random.nextInt(100) + 5,
    price: 30,
    description: "Sate daging sapi dengan bumbu khas dan sambal pedas manis.",
    rate: 4.8,
  ),
  Food(
    id: 3,
    name: "Tahu Sumedang",
    category: 'favorite',
    image: [
      "https://thumbs.dreamstime.com/b/tahu-sumedang-o-tofu-comida-tradicional-de-indonesia-208319211.jpg"
    ],
    location: location,
    review: random.nextInt(120) + 15,
    price: 10,
    description: "Tahu goreng renyah di luar dan lembut di dalam.",
    rate: 4.6,
  ),
  Food(
    id: 4,
    name: "Gado-Gado Cianjur",
    category: 'favorite',
    image: [
      "https://tse3.mm.bing.net/th?id=OIP.PwK88sWZQ5PoNuPpkADc3QHaE7&pid=Api&P=0&h=180"
    ],
    location: location,
    review: random.nextInt(180) + 20,
    price: 20,
    description: "Gado-gado segar dengan saus kacang khas Cianjur.",
    rate: 4.5,
  ),
  // Makanan Rekomendasi
  Food(
    id: 5,
    name: "Bakso Kuah",
    category: 'rekomendasi',
    image: [
      "https://tse1.mm.bing.net/th?id=OIP.uXmxP9dxZK_RLLFtmP94RAHaFi&pid=Api&P=0&h=180"
    ],
    location: location,
    review: random.nextInt(80) + 10,
    price: 18,
    description: "Bakso sapi kenyal dengan kuah kaldu yang gurih.",
    rate: 4.9,
  ),
  Food(
    id: 6,
    name: "Mie Ayam Cianjur",
    category: 'rekomendasi',
    image: [
      "https://tse4.mm.bing.net/th?id=OIP.5j40mfxHstb-T544FmkoZgHaHa&pid=Api&P=0&h=180"
    ],
    location: location,
    review: random.nextInt(110) + 15,
    price: 15,
    description: "Mie ayam lezat dengan potongan ayam berbumbu khas.",
    rate: 4.8,
  ),
  Food(
    id: 7,
    name: " Kue Mochi",
      category: 'rekomendasi',
      image: [
        "https://i1.wp.com/resepkoki.id/wp-content/uploads/2017/02/Resep-Kue-mochi.jpg?fit=1955%2C3276&ssl=1"
         ],
      location: location,
      review: random.nextInt(250) + 20,
      price: 20,
      description: "Kue tradisional dari tepung ketan dengan tekstur kenyal dan isian kacang atau gula. Biasanya disajikan dengan taburan tepung agar tidak lengket.",
      rate: 4.7),
  Food(
    id: 8,
     name: "Roti Manis Tan Keng Cu",
      category: 'rekomendasi',
      image: [
        "https://static.promediateknologi.id/crop/0x0:0x0/750x0/webp/photo/p1/861/2023/11/20/IMG_20231120_162614_700_x_456_piksel-1346578101.jpg"
       ],
      location: location,
      review: random.nextInt(250) + 20,
      price: 10,
      description: "Roti tradisional legendaris dengan tekstur lembut dan berbagai isian seperti cokelat, kacang, atau selai. Roti ini sudah ada sejak zaman kolonial.",
      rate: 4.8),
  Food(
    id: 9,
    name: "Soto Ayam",
    category: 'rekomendasi',
    image: [
      "https://tse3.mm.bing.net/th?id=OIP.DYtFvvJV5tq01kDq8b3yCwHaHa&pid=Api&P=0&h=180"
    ],
    location: location,
    review: random.nextInt(150) + 10,
    price: 18,
    description: "Soto ayam hangat dengan kuah kuning dan koya.",
    rate: 4.8,
  ),
];
