import 'dart:math';

Random random = Random();
const location =
      "khas cianjur";
class TravelDestination {
  final int id, price, review;
  final List<String>? image;
  final String name, description, category, location;
  final double rate;

  TravelDestination({
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

List<TravelDestination> listDestination = [
  // Popular
  TravelDestination(
      id: 1,
      name: "Laksa Cianjur",
      category: 'popular',
      image: [
        "https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/08/07/bihun-kuah-laksa-3245124123.jpg"
         ],
      location: location,
      review: random.nextInt(250) + 20,
      price: 25,
      description: "Sajian berkuah kuning berbahan dasar mie atau bihun, dengan tambahan suwiran ayam, telur rebus, dan oncom. Kuahnya kaya akan rempah dan santan, menghasilkan rasa gurih dan sedikit pedas",
      rate: 4.8),
  TravelDestination(
      id: 2,
      name: "Bandrek Cianjur",
      category: 'popular',
      image: [
        "https://static.wixstatic.com/media/d73e12_65f06237c9e042b18a6877612b757e44~mv2.jpg/v1/fill/w_980,h_653,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/d73e12_65f06237c9e042b18a6877612b757e44~mv2.jpg"
      ],
      location: location,
      review: random.nextInt(150) + 10,
      price: 10,
      description: "andrek adalah minuman hangat yang terbuat dari jahe, gula merah, dan berbagai rempah seperti kayu manis dan cengkeh.",
      rate: 4.7,
    ),
  TravelDestination(
      id: 3,
      name: "Sate Maranggi",
      category: 'popular',
      image: [
          "https://cdn.idntimes.com/content-images/community/2022/07/sate-maranggi-gaafoodiary-e08c9dc5918acd4505a300b21f6394a3-4c2a38b989eb134a5cdc88ceebb16dbc.jpg"
        ],
      location: location,
      review: random.nextInt(250) + 20,
      price: 25,
      description: "Sate daging sapi yang dimarinasi dengan bumbu khas, kemudian dibakar hingga matang dan disajikan dengan sambal tomat segar. Dagingnya empuk dan penuh rasa.",
      rate: 4.8),
  TravelDestination(
      id: 4,
      name: "Sekoteng",
    category: 'popular',
    image: [
      "https://cdn.idntimes.com/content-images/community/2022/10/131947853-1060107821121673-5560354678092603041-n-photoroom-f86cce9f67ab87e1f2714ff01fb5315e-19b86b3ded0016935aeef97d3e09754f.jpg"
    ],
    location: location,
    review: random.nextInt(120) + 15,
    price: 10,
    description: "Sekoteng adalah minuman hangat yang biasanya disajikan malam hari. Bahan utamanya adalah jahe yang direbus dengan gula dan ditambah kacang hijau, pacar cina, potongan roti, dan kacang tanah.",
    rate: 4.9,
  ),

  // Recommended destinations
  TravelDestination(
      id: 5,
      name: "TAUCO",
      category: 'rekomendasi',
      image: [
        "https://cdn-cas.orami.co.id/parenting/images/Tauco_Cianjur.width-1000.jpg",
        ],
      location: 'Khas Cianjur',
      review: random.nextInt(250) + 20,
      price: 20,
      description: "Tauco khas Cianjur adalah salah satu bumbu tradisional Indonesia yang terkenal, khususnya dari daerah Cianjur, Jawa Barat. Bumbu ini memiliki cita rasa yang khas.",
      rate: 4.6),
  TravelDestination(
      id: 6,
      name: "Nasi Liwet Cianjur",
      category: 'rekomendasi',
      image: [
           "https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/28/nasi-liwet-2531034049.jpg"
        ],
      location: 'Khas Cianjur',
      review: random.nextInt(250) + 20,
      price: 35,
      description: "Nasi liwet khas Cianjur dimasak dengan santan dan rempah-rempah, menghasilkan nasi yang gurih dan lezat. Biasanya disajikan dengan ikan asin, tahu, tempe, ayam goreng, dan sambal.",
      rate: 4.5),
  TravelDestination(
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
  TravelDestination(
      id: 8,
      name: "Goyobod",
      category: 'rekomendasi',
      image: [
        "https://cdn.idntimes.com/content-images/community/2021/04/ranezkitchen-20210415-180740-009b21ba4282a7bf825c8b51efbf2145-d1c9cc1a854e3ea29c29a5d1e6f32266.jpg"
      ],
      location: location,
      review: random.nextInt(180) + 20,
      price: 5,
      description: "Goyobod adalah minuman tradisional khas Sunda yang populer di Cianjur. Minuman ini terbuat dari campuran tepung hunkwe yang disajikan dengan es serut, santan, dan gula merah cair.",
      rate: 4.6,
    ),
  TravelDestination(
      id: 9,
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
];
