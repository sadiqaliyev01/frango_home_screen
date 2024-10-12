class IckilerData {
  IckilerData({
    required this.name,
    this.description = "",
    required this.price,
  });

  final String name;
  final String description;
  final String price;

  static List<IckilerData> getIckilerData = [
    IckilerData(
      name: "Coca-Cola® 330 ml",
      price: "2,40 ₼",
    ),
    IckilerData(
      name: "Fanta® 330 ml",
      price: "2,40 ₼",
    ),
    IckilerData(
      name: "Sprite® 330 ml",
      price: "2,40 ₼",
    ),
    IckilerData(
      name: "Fuse Tea® 330 ml",
      price: "2,40 ₼",
    ),
    IckilerData(
      name: "Coca-Cola® 300 ml",
      price: "1,60 ₼",
    ),
    IckilerData(
      name: "Sprite 300 ml",
      price: "1,60 ₼",
    ),
    IckilerData(
      name: "Fanta 300 ml",
      price: "1,60 ₼",
    ),
    IckilerData(
      name: "Fuse Tea 300 ml",
      price: "1,60 ₼",
    ),
    IckilerData(
      name: "Cappy Çöplü Şaftalı 200ml",
      price: "1,36 ₼",
    ),
    IckilerData(
      name: "Atena® Ayran 200 ml",
      price: "1,20 ₼",
    ),
    IckilerData(
      name: "Sirab® 500ml",
      price: "1,20 ₼",
    ),
  ];
}
