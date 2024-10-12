class FrangoTakoMenyuData {
  FrangoTakoMenyuData({
    required this.name,
    required this.description,
    required this.price,
  });

  final String name;
  final String description;
  final String price;

  static List<FrangoTakoMenyuData> getFrangoTakoMenuData = [
    FrangoTakoMenyuData(
      name: "Toyuqlu Tako Kombo Menyu",
      description: "2 x Toyuqlu Tako (50 qr) + Kartof Fri + İçki 300 ml",
      price: "9,60 ₼",
    ),
    FrangoTakoMenyuData(
      name: "Ətli Tako Kombo Menyu",
      description: "2 x Ətli Tako (40 qr) + Kartof Fri + İçki 300 ml",
      price: "11,60 ₼",
    ),
    FrangoTakoMenyuData(
      name: "Toyuqlu və Ətli Tako Kombo Menyu",
      description:
          "Ətli Tako (40 qr) + Toyuqlu Tako (50 qr) + Kartof Fri + İçki 300 ml",
      price: "10,56 ₼",
    ),
  ];
}
