class KomboMenyuData {
  KomboMenyuData({
    required this.name,
    required this.description,
    required this.price,
  });

  final String name;
  final String description;
  final String price;

  static List<KomboMenyuData> getKomboMenyuData = [
    KomboMenyuData(
      name: '1 Nəfərlik Kombo Menyu',
      description: 'Toyuq Dönəri + Atena® Ayran 200 ml',
      price: '4,00 ₼',
    ),
    KomboMenyuData(
      name: '2 Nəfərlik Kombo Menyu',
      description: '2 x Toyuq Dönəri + Kartof Fri + 2 x Atena® Ayran 200 ml',
      price: '11,20 ₼',
    ),
    KomboMenyuData(
      name: '3 Nəfərlik Kombo Menyu',
      description:
          '3 x Toyuq Dönəri + Kartof Fri + Soğan Halqaları + 3 x Atena® Ayran 200 ml',
      price: '16,56 ₼',
    ),
    KomboMenyuData(
      name: '4 Nəfərlik Kombo Menyu',
      description:
          '4 x Toyuq Dönəri + Kartof Fri + Soğan Halqaları + 4 x Atena® Ayran 200 ml',
      price: '21,76 ₼',
    ),
    KomboMenyuData(
      name: 'Kombo Menyu #1',
      description: '4 x Ət Dönəri Lavaşda + İçki 1 lt',
      price: '18,56 ₼',
    ),
    KomboMenyuData(
      name: 'Kombo Menyu #2',
      description: '4 x Toyuq Dönəri Lavaşda + İçki 1 lt',
      price: '15,36 ₼',
    ),
    KomboMenyuData(
      name: 'Kombo Menyu #3',
      description: '4 x Toyuq Dönəri Çörəkdə + İçki 1 lt',
      price: '15,36 ₼',
    ),
    KomboMenyuData(
      name: 'Kombo Menyu #4',
      description: '4 x Ət Dönəri Çörəkdə + İçki 1 lt',
      price: '18,56 ₼',
    ),
  ];
}
