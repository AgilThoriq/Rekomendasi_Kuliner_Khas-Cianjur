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
  // Popular destinations
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
      name: "Manisan Cianjur",
      category: 'popular',
      image: [
        "https://1.bp.blogspot.com/-m_2B1a2c6ZQ/YV0fpK9NTEI/AAAAAAAAHbs/LTT75fkAsHUrNB303MzhlVCiCgPgWfK4wCLcBGAsYHQ/s653/manisan%2Bcianjur.png"
         ],
      location: location,
      review: random.nextInt(250) + 20,
      price: 30,
      description: "Manisan yang terbuat dari buah-buahan seperti pala, mangga, dan pepaya yang diawetkan dengan gula. Rasanya manis, segar, dan sering dijadikan oleh-oleh.",
      rate: 4.9),
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
      name: "Ikan Bakar Cianjur",
      category: 'popular',
      image: [
        "https://media-cdn.tripadvisor.com/media/photo-s/1a/08/56/a1/gurame-bakar-kecap.jpg"
       ],
      location: location,
      review: random.nextInt(250) + 20,
      price: 100,
      description: "Ikan air tawar seperti gurame atau nila yang dibumbui rempah khas Sunda, kemudian dibakar hingga matang. Biasanya disajikan dengan lalapan dan sambal terasi.",
      rate: 4.7),

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
      name: "Ayam Goreng Cianjur",
      category: 'rekomendasi',
      image: [
        "https://media-cdn.tripadvisor.com/media/photo-s/13/38/8e/5b/photo0jpg.jpg"
      ],
      location: location,
      review: random.nextInt(250) + 20,
      price: 35,
      description: "Ayam yang dibumbui rempah khas Sunda, digoreng hingga berwarna keemasan. Kulitnya renyah, namun dagingnya tetap lembut dan gurih.",
      rate: 4.7),
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
