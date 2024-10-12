class FrangoIzgaraKofteMenyuData {
  FrangoIzgaraKofteMenyuData({
    required this.name,
    required this.description,
    required this.price,
  });

  final String name;
  final String description;
  final String price;

  static List<FrangoIzgaraKofteMenyuData> getFrangoIzgaraKofteMenyuData = [
    FrangoIzgaraKofteMenyuData(
      name: "Köftə Çörəkdə Kombo Menyu",
      description: "Köftə Çörəkdə + Kartof Fri + Ev Sayağı Ayran 300 ml",
      price: "8,64 ₼",
    ),
  ];
}
