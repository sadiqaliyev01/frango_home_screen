class QarnirData {
  QarnirData({
    required this.name,
    this.description = "",
    required this.price,
  });

  final String name;
  final String description;
  final String price;

  static List<QarnirData> getQarnirData = [
    QarnirData(
      name: "Ədviyyatlı Kartof Fri",
      price: "3,12 ₼",
    ),
    QarnirData(
      name: "Kartof Fri",
      price: "3,12 ₼",
    ),
  ];
}
