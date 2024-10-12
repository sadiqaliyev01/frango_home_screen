class DonerData {
  DonerData({
    required this.name,
    required this.description,
    required this.price,
  });

  final String name;
  final String description;
  final String price;

  static List<DonerData> getFrangoDonerData = [
    DonerData(
      name: "Toyuq Dönəri Çörəkdə",
      description:
          'Toyuq əti, xırtıldayan kahı, kartof fri, "Frango" sousu (seçim ilə)',
      price: "3,68 ₼",
    ),
    DonerData(
      name: "Toyuq Dönəri Lavaşda",
      description:
          'Toyuq əti, xırtıldayan kahı, kartof fri, "Frango" sousu (seçim ilə)',
      price: "3,68 ₼",
    ),
    DonerData(
      name: "Ət Dönəri Çörəkdə",
      description:
          'Ət, xırtıldayan kahı, kartof fri, "Frango" sousu (seçim ilə)',
      price: "4,48 ₼",
    ),
    DonerData(
      name: "Ət Dönəri Lavaşda",
      description:
          'Ət, xırtıldayan kahı, kartof fri, "Frango" sousu (seçim ilə)',
      price: '4,48 ₼',
    ),
    DonerData(
      name: "İskəndər Ət Dönəri",
      description: 'Ət, suxari, tomat, qatıq',
      price: "9,92 ₼",
    ),
    DonerData(
      name: "MPorsiyon Toyuq Dönəri",
      description: 'Toyuq əti, kartof fri, "Frango" sousu (seçim ilə)',
      price: '6,80 ₼',
    ),
    DonerData(
      name: "Porsiyon Ət Dönəri",
      description: 'Ət, kahı, kartof fri, "Frango" sousu (seçim ilə)',
      price: '7,92 ₼',
    ),
  ];
}
