class FrangoTakoData {
  FrangoTakoData({
    required this.name,
    required this.description,
    required this.price,
  });

  final String name;
  final String description;
  final String price;

  static List<FrangoTakoData> getFrangoTakoData = [
    FrangoTakoData(
      name: 'Toyuqlu Tako',
      description:
          'Toyuq əti, çedar pendiri, kartof fri, kahı, soğan, turşu xiyar, "Frango" sousu (seçim ilə)',
      price: '3,20 ₼',
    ),
    FrangoTakoData(
      name: 'Ətli Tako',
      description:
          'Ət, çedar pendiri, kartof fri, kahı, soğan, turşu xiyar, "Frango" sousu (seçim ilə)',
      price: '4,48 ₼',
    ),
  ];
}
