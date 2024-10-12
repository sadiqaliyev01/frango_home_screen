class DonerKomboMenyuData {
  DonerKomboMenyuData({
    required this.name,
    required this.description,
    required this.price,
  });

  final String name;
  final String description;
  final String price;

  static List<DonerKomboMenyuData> getDonerKomboMenyuData = [
    DonerKomboMenyuData(
      name: 'Toyuq Dönəri Menyu',
      description: 'Toyuq Dönəri + Kartof Fri + İçki 300 ml',
      price: '7,68 ₼',
    ),
    DonerKomboMenyuData(
      name: 'Ət Dönəri Menyu',
      description: 'Ət Dönəri + Kartof Fri + İçki 300 ml',
      price: '8,48 ₼',
    ),
  ];
}
