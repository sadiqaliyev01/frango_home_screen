class SouslarData {
  SouslarData({
    required this.name,
    this.description = "",
    required this.price,
  });

  final String name;
  final String description;
  final String price;

  static List<SouslarData> getSouslarData = [
    SouslarData(
      name: "Barbekyu Sousu",
      price: "0,56 ₼",
    ),
    SouslarData(
      name: "Sarımsaqlı Sous",
      price: "0,56 ₼",
    ),
    SouslarData(
      name: "Antakya Sousu",
      price: "0,56 ₼",
    ),
    SouslarData(
      name: "Ranç Sousu",
      price: "0,56 ₼",
    ),
    SouslarData(
      name: "Barbekyu Sousu",
      price: "0,56 ₼",
    ),
    SouslarData(
      name: "Cacıki Sousu",
      price: "0,56 ₼",
    ),
    SouslarData(
      name: "Köri Sousu",
      price: "0,56 ₼",
    ),
    SouslarData(
      name: "Acılı Sousu",
      price: "0,56 ₼",
    ),
  ];
}
