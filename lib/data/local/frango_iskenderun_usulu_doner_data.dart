class FrangoIskenderunUsuluDonerData {
  FrangoIskenderunUsuluDonerData({
    required this.name,
    required this.description,
    required this.price,
  });

  final String name;
  final String description;
  final String price;

  static List<FrangoIskenderunUsuluDonerData> getFrangoIkenderunUsuluDonerData =
      [
    FrangoIskenderunUsuluDonerData(
      name: 'İskəndərun Üsulu Toyuq Dönəri',
      description: 'Toyuq əti, cəfəri, turşu, soğan, bol sous',
      price: '4,48 ₼',
    ),
    FrangoIskenderunUsuluDonerData(
      name: 'İskəndərun Üsulu Ət Dönəri',
      description: 'Ət, cəfəri, turşu, soğan, bol sous',
      price: '5,28 ₼',
    ),
    FrangoIskenderunUsuluDonerData(
      name: 'İskəndərun Üsulu Toyuq Dönəri Menyu',
      description: 'İskəndərun Üsulu Toyuq Dönəri + Kartof Fri + İçki 300 ml',
      price: '9,04 ₼',
    ),
    FrangoIskenderunUsuluDonerData(
      name: 'İskəndərun Üsulu Ət Dönəri Menyu',
      description: 'İskəndərun Üsulu Ət Dönəri + Kartof Fri + İçki 300 ml',
      price: '9,84 ₼',
    ),
    FrangoIskenderunUsuluDonerData(
      name: '2 Nəfərlik İskəndərun Üsulu Toyuq Menyu',
      description:
          '2 nəfər üçün İskəndərun üsulu toyuq dönəri + 2 içki 300 ml hədiyyə',
      price: '10,32 ₼',
    ),
    FrangoIskenderunUsuluDonerData(
      name: '2 Nəfərlik İskəndərun Üsulu Ət Menyu',
      description:
          '2 nəfər üçün İskəndərun üsulu ət dönəri + 2 içki 300 ml hədiyyə',
      price: '12,72 ₼',
    ),
  ];
}
