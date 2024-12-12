import 'dart:math';

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
    name: "Kopi Susu Cianjur",
    category: 'favorite',
    image: [
      "https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/08/07/kopi-susu-cianjur.jpg"
    ],
    location: location,
    review: random.nextInt(150) + 10,
    price: 15,
    description: "Kopi susu khas Cianjur dengan rasa manis dan gurih, cocok untuk menemani santai Anda.",
    rate: 4.7,
  ),
  Drink(
    id: 2,
    name: "Es Teh Manis",
    category: 'favorite',
    image: [
      "https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/08/07/es-teh-manis-cianjur.jpg"
    ],
    location: location,
    review: random.nextInt(100) + 5,
    price: 10,
    description: "Es teh manis segar dengan rasa teh yang kuat dan manis, cocok untuk cuaca panas.",
    rate: 4.5,
  ),
  Drink(
    id: 3,
    name: "Jus Alpukat",
    category: 'favorite',
    image: [
      "https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/08/07/jus-alpukat-cianjur.jpg"
    ],
    location: location,
    review: random.nextInt(120) + 15,
    price: 18,
    description: "Jus alpukat segar dengan campuran susu dan gula, memberikan rasa creamy dan lembut.",
    rate: 4.9,
  ),
  Drink(
    id: 4,
    name: "Smoothie Buah Tropis",
    category: 'favorite',
    image: [
      "https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/08/07/smoothie-buah-cianjur.jpg"
    ],
    location: location,
    review: random.nextInt(180) + 20,
    price: 20,
    description: "Smoothie segar dengan campuran berbagai buah tropis seperti mangga, nanas, dan pisang.",
    rate: 4.6,
  ),
  // Minuman Rekomendasi
  Drink(
    id: 5,
    name: "Jus Jeruk Segar",
    category: 'rekomendasi',
    image: [
      "https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/08/07/jus-jeruk-segar.jpg"
    ],
    location: location,
    review: random.nextInt(80) + 10,
    price: 12,
    description: "Jus jeruk segar dengan rasa manis dan asam alami, penuh vitamin C.",
    rate: 4.8,
  ),
  Drink(
    id: 6,
    name: "Cappuccino Cianjur",
    category: 'rekomendasi',
    image: [
      "https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/08/07/cappuccino-cianjur.jpg"
    ],
    location: location,
    review: random.nextInt(110) + 15,
    price: 18,
    description: "Cappuccino dengan cita rasa yang creamy dan gurih, cocok untuk pecinta kopi.",
    rate: 4.7,
  ),
  Drink(
    id: 7,
    name: "Milkshake Coklat",
    category: 'rekomendasi',
    image: [
      "https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/08/07/milkshake-coklat.jpg"
    ],
    location: location,
    review: random.nextInt(90) + 8,
    price: 17,
    description: "Milkshake coklat manis dan creamy, cocok untuk yang suka minuman manis.",
    rate: 4.6,
  ),
  Drink(
    id: 8,
    name: "Teh Tarik",
    category: 'rekomendasi',
    image: [
      "https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/08/07/teh-tarik.jpg"
    ],
    location: location,
    review: random.nextInt(130) + 10,
    price: 13,
    description: "Teh tarik khas Cianjur dengan rasa teh manis yang kental dan tekstur yang lembut.",
    rate: 4.7,
  ),
  Drink(
    id: 9,
    name: "Es Kelapa Muda",
    category: 'rekomendasi',
    image: [
      "https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/08/07/es-kelapa-muda.jpg"
    ],
    location: location,
    review: random.nextInt(150) + 10,
    price: 14,
    description: "Es kelapa muda segar dengan air kelapa alami yang menyegarkan di hari panas.",
    rate: 4.8,
  ),
];
