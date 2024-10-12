class LahmacunData {
  LahmacunData({
    required this.name,
    this.description = "",
    required this.price,
  });

  final String name;
  final String description;
  final String price;

  static List<LahmacunData> getLahmacunData = [
    LahmacunData(
      name: "Sadə Lahmacun",
      price: "3,20 ₼",
    ),
    LahmacunData(
      name: "Pendirli Lahmacun",
      price: "3,60 ₼",
    ),
    LahmacunData(
      name: "Lahmacun Dönər",
      price: "7,60 ₼",
    ),
  ];
}
