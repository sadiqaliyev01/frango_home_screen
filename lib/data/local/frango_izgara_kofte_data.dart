class FrangoIzgaraKofteData {
  FrangoIzgaraKofteData({
    required this.price,
    required this.name,
    required this.description,
  });

  final String name;
  final String description;
  final String price;

  static List<FrangoIzgaraKofteData> getIzqaraKofteData = [
    FrangoIzgaraKofteData(
      name: "Izqara Köftə",
      price: "4,64 ₼",
      description:
          'Mal əti, soğan, pomidor, kahı, kartof fri, "Frango" sousu (seçim ilə)',
    ),
  ];
}
